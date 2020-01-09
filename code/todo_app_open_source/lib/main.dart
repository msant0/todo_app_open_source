import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:todo_app_open_source/controller/controller.dart';

import 'pages/home.dart';

void main() {
  runApp(MultiProvider(
      providers: [Provider<Controller>(create: (_) => Controller())],
      child: MaterialApp(home: Main())));
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
            seconds: 3,
            navigateAfterSeconds: Home(),
            backgroundColor: Colors.white,
            styleTextUnderTheLoader: TextStyle(),
            photoSize: 100.0,
            loaderColor: Colors.white),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/icon.png'))),
        )
      ],
    );
  }
}
