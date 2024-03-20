// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'money_container.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "My App",
//       home: MyHomePage(),
//       theme: ThemeData(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "บัญชีของฉัน",
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//           backgroundColor: Colors.purple,
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             children: [
//               MoneyContainer("ยอดคงเหลือ", 12000, Colors.lightBlue, 150),
//               SizedBox(height: 10),
//               MoneyContainer("รายรับ", 15000, Colors.green, 120),
//               SizedBox(height: 10),
//               MoneyContainer("รายจ่าย", 3000, Colors.red, 120),
//               SizedBox(height: 10),
//               MoneyContainer("ยอดค้างชำระ", 1200, Colors.orange, 120),
//             ],
//           ),
//         ));
//   }
// }
