import 'package:flutter/material.dart';
import 'package:learn_up_miniproject/first.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: first(),
    );
  }
}
