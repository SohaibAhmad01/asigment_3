import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'passgen.dart';
import 'hard.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: Text('SIMPLE'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => passgenerator()),
                );
              },
            ),
            ListTile(
              title: Text('HARD'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return hardpage();
                }));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Homepage | Password Generator'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                child: Text('SIMPLE'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return passgenerator();
                  }));
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                child: Text('HARD'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return hardpage();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
