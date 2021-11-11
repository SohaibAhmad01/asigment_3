import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class temporary{

  Color X(String y){
    if(y=='1'){
      return (Colors.red);
    }
  }
}

void fun(){

}

class colorPlaying extends StatelessWidget {
  String x1;
  String x2;
  String x3;
  String x4;
  String x5;
  String x6;

  colorPlaying({Key key,
    this.x1,
    this.x2,
    this.x3,
    this.x4,
    this.x5,
    this.x6
  }) : super(key: key);

  Color fun(String q){
    if(q=='1'){
      return (Colors.red);
    }
    else if(q=='2'){
      return (Colors.orange);
    }
    else if(q=='3'){
      return (Colors.grey);
    }
    else if(q=='4'){
      return (Colors.purple);
    }
    else if(q=='5'){
      return (Colors.yellow);
    }
    else if(q=='6'){
      return (Colors.black);
    }
  }

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Play'),
          // title: Text(x1),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: FlatButton(
                  minWidth: 1500,
                  // color: Colors.red,
                  color: fun(x6),
                  onPressed: (){
                    final play = AudioCache();
                    play.play('1.wav');
                  },
                ),
              ),

              Expanded(
                child: FlatButton(
                  minWidth: 1500,
                  // color: Colors.red,
                  color: fun(x1),
                  onPressed: (){
                    final play = AudioCache();
                    play.play('1.wav');
                  },
                ),
              ),

              Expanded(
                child: FlatButton(
                  minWidth: 1500,
                  // color: Colors.orange,
                  color: fun(x2),
                  onPressed: (){
                    final play = AudioCache();
                    play.play('2.wav');
                    // play.play('1');
                  },
                ),
              ),

              Expanded(
                child: FlatButton(
                  minWidth: 1500,
                  // color: Colors.purple,
                  color: fun(x3),
                  onPressed: (){
                    final play = AudioCache();
                    play.play('3.wav');
                  },
                ),
              ),


              Expanded(
                child: FlatButton(
                  minWidth: 1500,
                  // color: Colors.green,
                  color: fun(x4),
                  onPressed: (){
                    final play = AudioCache();
                    play.play('4.wav');
                  },
                ),
              ),

              Expanded(
                child: FlatButton(
                  minWidth: 1500,
                  // color: Colors.grey,
                  color: fun(x5),
                  onPressed: (){
                    final play = AudioCache();
                    play.play('5.wav');
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
