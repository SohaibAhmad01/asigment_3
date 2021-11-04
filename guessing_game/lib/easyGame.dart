import 'package:flutter/material.dart';
import 'dart:math';
import 'main.dart';

import 'package:rflutter_alert/rflutter_alert.dart';
import '';

Random random = new Random();
int randomNumber = random.nextInt(5);
int userScore = 0;
int numAttempts = 0;

String hintGenerator(int randomNumber){
  String temp = '';
  if(randomNumber==1){
    temp = '2';
  }
  else if(randomNumber==2){
    temp = '3';
  }
  else if(randomNumber==3){
    temp = '4';
  }
  else if(randomNumber==4){
    temp = '5';
  }
  else if(randomNumber==5){
    temp = '1';
  }

  return temp;
}
TextEditingController userAttempt = new TextEditingController();
String guess = "";

int hintNumber = randomNumber-1;

class easy extends StatefulWidget {
  const easy({Key? key}) : super(key: key);

  @override
  _easyState createState() => _easyState();
}

class _easyState extends State<easy> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(userAttempt.text),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),

              Text.rich(
                TextSpan(
                  text: ("$hintNumber"),
                  style: TextStyle(fontSize: 20),
                ),
              ),

              TextField(
                controller: userAttempt,
                decoration: InputDecoration(
                  labelText: "Guess a number between 1-5",
                  labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(
                height: 16,
              ),
              RaisedButton(
                child: Text(
                  'Check',
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  // print(hint);
                  print(randomNumber);
                  if(numAttempts<3){
                    numAttempts++;
                    guess = userAttempt.text;
                    var temp = int.parse(guess);
                    print(temp);
                    print(randomNumber);
                    if(temp==randomNumber){
                      userScore++;
                      randomNumber = random.nextInt(5);
                      setState((){
                        randomNumber = random.nextInt(5);
                        hintNumber = randomNumber-1;
                      });
                      // hinty = hintGenerator(randomNumber);
                      // hint = hintx+hinty;
                    }
                    else{
                      Alert(
                        context: context,
                        title: 'Incorrect Value',
                        desc: 'Try Again',
                      ).show();
                    }
                  }
                  else{
                    String temp =  userScore.toString();
                    String finalSocre = 'Your score is '+temp;
                    Alert(
                      context: context,
                      title: 'GAME OVER',
                      desc: temp,
                    ).show();
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> MyApp()
                    ));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

