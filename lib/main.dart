import 'package:flutter/material.dart';
import 'package:login_cubit/example.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
   //   theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}