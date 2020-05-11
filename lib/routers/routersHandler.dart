import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../views/MyHomePage.dart';
import '../components/Splash.dart';
import '../views/TestRouter.dart';


Handler homePageHandler=Handler(
  handlerFunc: (BuildContext context ,Map<String,List<String>> params){
    var id=params['id'];
    print('当前路由传参---->$id');
    return MyHomePage(title: 'hello',);
  }
);
Handler rootHandler=Handler(
  handlerFunc: (BuildContext context ,Map<String,List<String>> params){
    var id=params['id'];
    print('当前路由传参---->$id');
    return Splash();
  }
);
Handler testHandler=Handler(
  handlerFunc: (BuildContext context ,Map<String,List<String>> params){
    var data=params['data'];
    print('当前路由传参---->$data');
    return TestRouter(data);
  }
);
