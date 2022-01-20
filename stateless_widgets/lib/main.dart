import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My stateless widget",
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
            appBar: AppBar(
              title: new Text("mera appbar"),
            ),
            body: Container(
              //alignment: Alignment.bottomLeft,
              // width: 200.0,
              // height: 100.0,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(35),
              //color: Colors.yellow,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.green,
                    offset: new Offset(6.0, 6.0),
                  ),
                ],
              ),

              child: new Text("Hello World",
                  style: TextStyle(
                    fontFamily: "cursive",
                    color: Colors.yellow,
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                          color: Colors.blue,
                          offset: Offset(1, 1),
                          blurRadius: 2)
                    ],
                  )),

                  
            )));
  }
}
