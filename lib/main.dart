import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intrust_finance_india/home.dart';
import 'package:intrust_finance_india/login.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      

    ) ;
  }
}