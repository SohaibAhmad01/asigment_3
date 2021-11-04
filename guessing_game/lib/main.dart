import 'package:flutter/material.dart';

import 'drawer.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz APP'),
          ),

        drawer: MainDrawer(),

        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Text('get to the drawer', style:TextStyle(fontSize: 30))
            ],
          ),
        ),
        ),
      );
  }
}
