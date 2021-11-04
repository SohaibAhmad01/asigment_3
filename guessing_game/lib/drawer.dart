import 'package:flutter/material.dart';
import 'package:guessing_game/hard.dart';
import 'easyGame.dart';
import 'main.dart';

int num = 10;
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
            color: Colors.indigo,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 10,
                      bottom: 15,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                         image: DecorationImage(
                             image: AssetImage('assets/DP.jpg'),
                         fit: BoxFit.fill
                       )
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Total number of questions : ",),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Total wrong answers : ",),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Total correct answers : ",),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Remaining number of questions : ",),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Easy',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: (){
                Navigator.push(context, MaterialPageRoute(
                builder: (context)=> easy(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Tough',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> hard(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Restart',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> MyApp(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
