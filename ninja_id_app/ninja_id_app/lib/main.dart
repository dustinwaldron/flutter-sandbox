import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Ninja ID Card'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/ninja.png"),
                  ),
                ),
                Divider(height: 60, color: Colors.grey[800]),
                Text('NAME',
                    style: TextStyle(letterSpacing: 2, color: Colors.grey)),
                SizedBox(height: 10),
                Text('Chun-Li',
                    style: TextStyle(letterSpacing: 2, fontSize: 28, fontWeight: FontWeight.bold, color: Colors.amberAccent[200])),
                SizedBox(height: 30),
                Text('CURRENT NINJA LEVEL',
                    style: TextStyle(letterSpacing: 2, color: Colors.grey)),
                SizedBox(height: 10),
                Text('8',
                    style: TextStyle(letterSpacing: 2, fontSize: 28, fontWeight: FontWeight.bold, color: Colors.amberAccent[200])),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.grey[400]
                    ),
                    SizedBox(width: 10),
                    Text('chun.li@ninja.net',
                        style: TextStyle(color: Colors.grey[400], fontSize: 18, letterSpacing: 1)),
                  ],
                )
              ],
            )));
  }
}
