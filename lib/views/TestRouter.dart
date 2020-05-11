import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/stores/TestRouterStore.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/api/http.dart';
import 'dart:convert';
import 'package:flutter_app/models/common.dart';

class TestRouter extends StatefulWidget {
  var data;

  TestRouter(this.data);

  @override
  _TestRouterState createState() => _TestRouterState();
}

class _TestRouterState extends State<TestRouter> {
  final _testStore = TestRouterStore();
  var showCount="";

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.data[0]),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.data[0],
            ),
            Text(
              this.showCount.toString()
            ),
            Observer(
              builder: (_) => Text(
                '${_testStore.count}',
              ),
            ),
            RaisedButton(
              child: Text('普通按钮'),
              onPressed: () async {
                _testStore.changeCount();
                var data = await $http.dio.get('/v1/symbolConfig/findAll');
                var tt=data.data;
                this.showCount=tt['data'][0]['symbol'];
                print('数组>>>--${tt['data'][0]['symbol']}');
                setState(() {
                  this.showCount=tt['data'][0]['symbol'];
                });
                tt['data'].forEach((item){
                  print('item>>>$item');
                });
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
