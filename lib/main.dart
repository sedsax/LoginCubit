import 'package:flutter/material.dart';
import 'package:login_cubit/edit_name_u%C4%B1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
   //   theme: ThemeData.dark(),
      home: EditName(),
    );
  }
}