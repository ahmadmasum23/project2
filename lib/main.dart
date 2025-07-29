import 'package:flutter/material.dart';
import 'package:flutter_samples/ui/getstart.dart';
//import 'package:flutter_samples/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Project 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:GetStart(),
    );
  }
}
//11hallo
