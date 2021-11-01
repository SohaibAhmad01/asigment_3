import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Xylophone App',
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget soundTile(Color color, String nmbr){

    final player=new AudioCache();

    return FlatButton(
      height: 100,
      color: color,
      onPressed: (){
        player.play("xylophone_assets_assets_note$nmbr.wav");
      }, child: Text(""),
    );

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              soundTile(Colors.red,"1"),
              soundTile(Colors.orange, "2"),
              soundTile(Colors.yellow, "3"),
              soundTile(Colors.green, "4"),
              soundTile(Colors.teal, "5"),
              soundTile(Colors.blue, "6"),
              soundTile(Colors.purple, "7"),
            ],
          )
      ),
    );
  }
}