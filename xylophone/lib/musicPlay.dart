import 'package:flutter/material.dart';
import 'package:xylophone/main.dart';

import 'musicSelection.dart';

class musicSelection extends StatelessWidget {

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
                'Select music of your choice from following list',
                style: TextStyle(
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Text(
                'For note 1: Enter 1',
                style: TextStyle(
                ),
              ),

              Text(
                'For note 2: Enter 2',
                style: TextStyle(
                ),
              ),

              Text(
                'For note 3: Enter 3',
                style: TextStyle(
                ),
              ),

              Text(
                'For note 4 : Enter 4',
                style: TextStyle(
                ),
              ),

              Text(
                'For note 5 : Enter 5',
                style: TextStyle(
                ),
              ),

              SizedBox(
                height: 16,
              ),
              TextField(
                controller: Controller1,
                decoration: InputDecoration(
                    labelText: "Map 2nd song",
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
                    labelText: "Map 2nd song",
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
                    labelText: "Map 2nd song",
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
                    labelText: "Map 2nd song",
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
                    labelText: "Map 2nd song",
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
    String c1 = Controller1.text;
    String c2 = Controller2.text;
    String c3 = Controller3.text;
    String c4 = Controller4.text;
    String c5 = Controller5.text;

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => colorSelections(c1: c1, c2:c2,  c3:c3,  c4:c4,  c5:c5),
        ));
  }
}


