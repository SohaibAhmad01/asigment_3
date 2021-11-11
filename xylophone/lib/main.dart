import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:xylophone/color.dart';
import 'package:xylophone/default.dart';
import 'package:xylophone/musicSelection.dart';
import 'package:xylophone/musicPlay.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main(){
  runApp(MaterialApp(
    home: XylophoneApp(),
  ));
}

class XylophoneApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('XYLOPHONE'),
        ),

        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 200.0,
                  height: 50.0,
                ),
              ),

              Center(
                child: Expanded(
                  child: ButtonTheme(
                    minWidth: 200.0,
                    height: 100.0,
                    child:RaisedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> defaultSetting(),
                      ));
                    },
                        child:  Text('PLAY')
                    ),
                  ),
                ),
              ),

              Center(
                child: SizedBox(
                  width: 200.0,
                  height: 50.0,
                ),
              ),

              //Play game
              Center(
                child: Expanded(
                  child: ButtonTheme(
                    minWidth: 200.0,
                    height: 100.0,
                    child:RaisedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> musicSelection(),
                      ));
                    },
                        child:  Text('Customize Music')
                    ),
                  ),
                ),
              ),

              Center(
                child: SizedBox(
                  width: 200.0,
                  height: 50.0,
                ),
              ),

              //Customize colors
              Center(
                child: Expanded(
                  child: ButtonTheme(
                    minWidth: 200.0,
                    height: 100.0,
                    child:RaisedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> colorCustomize(),
                      ));
                    },
                        child:  Text('Customize Colors')
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      );
  }
}
