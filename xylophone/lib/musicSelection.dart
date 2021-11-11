import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class colorSelections extends StatelessWidget {
  String c1;
  String c2;
  String c3;
  String c4;
  String c5;

  // String x1;
  // String x2;
  // String x3;
  // String x4;
  // String x5;


  colorSelections({Key key, this.c1,
    this.c2,
    this.c3,
    this.c4,
    this.c5,
    // this.x1,
    // this.x2,
    // this.x3,
    // this.x4,
    // this.x5
  }) : super(key: key);

  Widget build(BuildContext context){

    String temp = '.wav';

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Play'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: FlatButton(
                ),
              ),

              Expanded(
                child: FlatButton(
                  minWidth: 1500,
                  color: Colors.red,
                  onPressed: (){
                    final play = AudioCache();
                    play.play(c1+temp);
                  },
                ),
              ),

              Expanded(
                child: FlatButton(
                  minWidth: 1500,
                  color: Colors.orange,
                  onPressed: (){
                    final play = AudioCache();
                     play.play(c2+temp);
                    // play.play('1');
                  },
                ),
              ),

              Expanded(
                child: FlatButton(
                  minWidth: 1500,
                  color: Colors.purple,
                  onPressed: (){
                    final play = AudioCache();
                    play.play(c3+temp);
                  },
                ),
              ),


              Expanded(
                child: FlatButton(
                  minWidth: 1500,
                  color: Colors.green,
                  onPressed: (){
                    final play = AudioCache();
                    play.play(c4+temp);

                  },
                ),
              ),

              Expanded(
                child: FlatButton(
                  minWidth: 1500,
                  color: Colors.grey,
                  onPressed: (){
                    final play = AudioCache();
                    play.play(c5+temp);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
