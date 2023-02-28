import 'package:flutter/material.dart';
import 'package:pject/home.dart';
import 'package:pject/route.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Badge Number',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/home':(context) => DropDown(),
        '/route':(context) => QuickActionButton(),
      },
      initialRoute: '/home',
     //home: QuickActionButton(),
     //home: DropDown(),
    );
  }
}
