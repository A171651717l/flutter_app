import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter_app/views/MyHomePage.dart';
import 'package:flutter_app/routers/application.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: MyHomePage(
        title: 'hello',
      ),
      title: Text(
        '欢迎使用！',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
      ),
      loadingText: Text(
        "加载中...",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
      ),
      image: Image.asset("lib/assets/images/start.png", fit: BoxFit.fill),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 60.0,
      loaderColor: Colors.red,
    );
  }
}
