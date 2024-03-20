import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myfirst_app/ExchangeRate.dart';
import 'package:myfirst_app/MoneyBox.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ExchangeRate? _dataFromAPI;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getExchangeRate();
  }

  Future<ExchangeRate?> getExchangeRate() async {
    var API_KEY = "752eac3fd6ce8e77b163f037";
    var url =
        Uri.parse("https://v6.exchangerate-api.com/v6/$API_KEY/latest/THB");
    var response = await http.get(url);
    _dataFromAPI = exchangeRateFromJson(response.body);
    return _dataFromAPI;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exchange Rate Convertion",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder(
          future: getExchangeRate(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            //ข้อมูลที่ดึงมาจาก api จะเก็บใน snapshot
            //เช็คถ้า snapshot ได้ข้อมูลครบจะแสดงอะไร ถ้าไม่ครบแสดง LinearProgressIndicator()
            if(snapshot.connectionState == ConnectionState.done){
              var result = snapshot.data;
              double amount = 100;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    MoneyBox("THB", amount, Colors.lightBlue, 150),
                    SizedBox(height: 5,),
                    MoneyBox("USD", amount*result.conversionRates['USD'], Colors.green, 120),
                    SizedBox(height: 5,),
                    MoneyBox("EUR", amount*result.conversionRates['EUR'], Colors.red, 120),
                    SizedBox(height: 5,),
                    MoneyBox("GBP", amount*result.conversionRates['GBP'], Colors.pink, 120),
                  ],
                ),
              );
            }
            return LinearProgressIndicator();
          }),
    );
  }
}
