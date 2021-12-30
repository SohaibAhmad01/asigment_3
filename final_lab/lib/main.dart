import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(passApp());
}

class passApp extends StatelessWidget {
  const passApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generate your password',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homepage(),
    );
  }
}
