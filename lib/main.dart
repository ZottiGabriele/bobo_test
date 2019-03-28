import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_bobo/bottomBar.dart';
import 'package:test_bobo/topBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Monsterrat',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        //decoration: BoxDecoration(color: Color.fromARGB(255, 255, 253, 232)),
        child: Column(
          children: <Widget>[
            Container(
              height: NavigationToolbar.kMiddleSpacing * 3,
              child: Center(),
            ),
            Body(),
            BottomBar("Prossime partite"),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 8.0, 24, 0),
                  child: Text(
                    "Attic",
                    style: TextStyle(fontSize: 23, color: Colors.black26),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 8.0, 24, 16),
                  child: Text(
                    "BoboCup2k19",
                    style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TopBar(0),
              ],
            ),
          )
        ],
      ),
    );
  }
}