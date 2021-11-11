import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class defaultSetting extends StatelessWidget {

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
                    play.play('1.wav');
                  },
                ),
              ),

              Expanded(
                child: FlatButton(
                  minWidth: 1500,
                  color: Colors.orange,
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
                  color: Colors.purple,
                  onPressed: (){
                    final play = AudioCache();
                    play.play('3.wav');
                  },
                ),
              ),


              Expanded(
                child: FlatButton(
                  minWidth: 1500,
                  color: Colors.green,
                  onPressed: (){
                    final play = AudioCache();
                    play.play('4.wav');

                  },
                ),
              ),

              Expanded(
                child: FlatButton(
                  minWidth: 1500,
                  color: Colors.grey,
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
