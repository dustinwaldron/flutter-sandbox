import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Awesome Flutter App"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Row(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset('assets/images/fall-1.jpg'),
            ),
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.cyan,
                  child: Text('1', textAlign: TextAlign.center),
                )),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.teal,
                child: Text('2', textAlign: TextAlign.center),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.pink,
                child: Text(
                  '3',
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: Text("click"),
          backgroundColor: Colors.blueGrey,
        ));
  }
}
