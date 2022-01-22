import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String msg = 'Click on Icons to see the msg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
        title: "My stateless widget",
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
            appBar: AppBar(
              title: new Text("my appbar"),
              leading: new Icon(Icons.menu),
              actions: <Widget>[
                IconButton(
                    onPressed: () {
                      setState(() {
                        msg = 'You pressed arrow icon';
                      });
                    },
                    icon: const Icon(Icons.forward)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        msg = 'You pressed close icon';
                      });
                    },
                    icon: const Icon(Icons.close)),
              ],

              backgroundColor: Colors.pink,
              elevation: 30.0,
              //centerTitle: true,
              titleSpacing: 70.0,
              //toolbarOpacity: 0.5,
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
                  BoxShadow(
                    color: Colors.green,
                    offset: const Offset(6.0, 6.0),
                  ),
                ],
              ),

              child:  Text(msg,
                  style: TextStyle(
                    fontFamily: 'sans serif',
                    color: Colors.yellow,
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                          color: Colors.blue,
                          offset: Offset(1, 1),
                          blurRadius: 2)
                    ],
                  )
                  ),
            )
            )
            
    );
  }
}

/* class MyApp extends State<MyApp> {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My stateless widget",
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
            appBar: AppBar(
              title: new Text("my appbar"),
              leading: new Icon(Icons.menu),
              actions: <Widget>[
                new IconButton(onPressed: (){print('You pressed arrow icon');}, icon: new Icon(Icons.forward)),
                new IconButton(onPressed: (){print('You pressed close icon');}, icon: new Icon(Icons.close)),
              ],

              backgroundColor: Colors.pink,
              elevation: 30.0,
              //centerTitle: true,
              titleSpacing: 70.0,
              //toolbarOpacity: 0.5,
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
                   BoxShadow(
                    color: Colors.green,
                    offset:  const Offset(6.0, 6.0),
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
 */