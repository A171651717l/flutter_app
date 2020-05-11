import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'routers/Routers.dart';
import 'package:provider/provider.dart';
import 'routers/application.dart';
import 'stores/TestRouterStore.dart';
void main() => runApp(
    MultiProvider(
      providers: [
        Provider<TestRouterStore>(
          create: (_) => TestRouterStore(),
        ),
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //-------------------主要代码start
    final router = Router(); //路由初始化
    Routers.configureRoutes(router);
    Application.router = router;
    //-------------------主要代码end
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
        //----------------主要代码start
        onGenerateRoute: Application.router.generator, //路由静态化
        //----------------主要代码end
    );
  }
}


