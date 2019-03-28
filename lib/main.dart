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
            TopBar(),
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
      child: Center(child: Text("My name is Jeff")),
    );
  }
}
