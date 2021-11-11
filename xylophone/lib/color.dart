import 'package:flutter/material.dart';
import 'package:xylophone/colorPlay.dart';
import 'package:xylophone/main.dart';

import 'musicSelection.dart';

class colorCustomize extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

TextEditingController Controller1 = new TextEditingController();
TextEditingController Controller2 = new TextEditingController();
TextEditingController Controller3 = new TextEditingController();
TextEditingController Controller4 = new TextEditingController();
TextEditingController Controller5 = new TextEditingController();
TextEditingController Controller6 = new TextEditingController();

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customize music list"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text.rich(
                TextSpan(
                  text: 'Instructions',
                  style: TextStyle(fontSize: 20),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Text(
                'Select colors of your choice from following list',
                style: TextStyle(
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Text(
                'For Red: Enter 1',
                style: TextStyle(
                ),
              ),

              Text(
                'For Blue: Enter 2',
                style: TextStyle(
                ),
              ),

              Text(
                'For Orange: Enter 3',
                style: TextStyle(
                ),
              ),

              Text(
                'For Green: Enter 4',
                style: TextStyle(
                ),
              ),

              Text(
                'For Yellow: Enter 5',
                style: TextStyle(
                ),
              ),

              SizedBox(
                height: 16,
              ),
              TextField(
                controller: Controller1,
                decoration: InputDecoration(
                    labelText: "Tile 1",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                          Icons.music_note
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 16,
              ),

              TextField(
                controller: Controller2,
                decoration: InputDecoration(
                    labelText: "Tile 2",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                          Icons.music_note
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 16,
              ),

              TextField(
                controller: Controller3,
                decoration: InputDecoration(
                    labelText: "Tile 3",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                          Icons.music_note
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 16,
              ),

              TextField(
                controller: Controller4,
                decoration: InputDecoration(
                    labelText: "Tile 4",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                          Icons.music_note
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 16,
              ),

              TextField(
                controller: Controller5,
                decoration: InputDecoration(
                    labelText: "Tile 5",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                          Icons.music_note
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 16,
              ),

              TextField(
                controller: Controller6,
                decoration: InputDecoration(
                    labelText: "Tile 6",
                    labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                          Icons.music_note
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 16,
              ),

              SizedBox(
                height: 16,
              ),
              RaisedButton(
                child: Text(
                  'Go to second screen',
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  sendData(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void sendData(BuildContext context){
    String x1 = Controller1.text;
    String x2 = Controller2.text;
    String x3 = Controller3.text;
    String x4 = Controller4.text;
    String x5 = Controller5.text;
    String x6 = Controller6.text;

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => colorPlaying(x1:x1, x2:x2,  x3:x3,  x4:x4,  x5:x5,x6:x6),
        ));
  }
}


