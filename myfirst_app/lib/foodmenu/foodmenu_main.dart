// import 'package:flutter/material.dart';
// import 'foodmenu.dart';

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
//       theme: ThemeData(primarySwatch: Colors.deepPurple),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<FoodMenu> menu = [
//     FoodMenu("Americano", "60", "assets/images/americano.jpeg"),
//     FoodMenu("Latte", "80", "assets/images/latte.jpeg"),
//     FoodMenu("Espesso", "90", "assets/images/espesso.jpeg"),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(  
//             "Choose Menu",
//             style: TextStyle(color: Colors.white),
//           ),
//           backgroundColor: Colors.deepPurpleAccent,
//         ),
//         body: ListView.builder(
//             itemCount: menu.length,
//             itemBuilder: (BuildContext context, index) {
//               FoodMenu food = menu[index];
//               return ListTile(
//                 leading: Image.asset(food.img),
//                 title: Text(
//                   food.name,
//                   style: TextStyle(fontSize: 25),
//                 ),
//                 subtitle: Text("฿" + food.price),
//                 onTap: () {
//                   print("You Choosen:"+food.name);
//                 },
//               );
//             }));
//   }
// }
