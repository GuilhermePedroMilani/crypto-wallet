import 'package:card_2/pages/page_one/pageOne.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: PageOne(),
    );
  }
}