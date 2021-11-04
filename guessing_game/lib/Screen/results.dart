import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Number Guesiing Game'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Sohaib Results page'),
            RaisedButton(
              child: Text('Submit'),
              onPressed: null,
            ),
            FloatingActionButton(
                child: Icon(Icons.arrow_back_ios),
                onPressed: (){
                  Navigator.pop(context);
                })
          ]
          ,

        ),
      ),
    );
    return Container();
  }
}
