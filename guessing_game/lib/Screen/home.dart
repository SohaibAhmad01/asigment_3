import 'package:flutter/material.dart';
import 'package:guessing_game/Screen/maindrawer.dart';
import './maindrawer.dart';
import './results.dart';

class  HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('Number Guesiing Game'),
    ),
    drawer: MainDrawer(),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Sohaib main page'),
          RaisedButton(
            child: Text('Submit'),
              onPressed:() {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Result(),));

              },
          ),
        ]
        ,

       ),
     ),
    );
    return Container();
  }
}
