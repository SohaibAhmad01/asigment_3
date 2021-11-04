import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
     child: Column(
       children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 200,
                  child: Text(''),
                )
              ],
              ),
            ),
          ),
       ],
     ),
    );
  }
}
