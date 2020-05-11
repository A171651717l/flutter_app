import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'routersHandler.dart';

class Routers { //配置类
  //静态方法
  static void configureRoutes(Router router){//路由配置
    //找不到路由
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context,Map<String,List<String>> params){
          print('ERROR====>ROUTE WAS NOT FONUND!!!');
        }
    );
    //整体配置
    router.define('/homePage', handler: homePageHandler);
    router.define('/', handler: rootHandler);
    router.define('/test/:data', handler: testHandler);

  }

}
