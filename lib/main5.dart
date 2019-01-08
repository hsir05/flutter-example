import 'package:flutter/material.dart';

//  图片展示控件
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new AssetMyImg(),
    );
  }
}

class AssetMyImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: '图片放入',
        home: new Scaffold(
          appBar: AppBar(title: Text('图片展示控件')),
          body: new Center(
            // 从本地获取
            // child: new Image.asset('images/001.jpg'),
            // 从网络获取
            child: new Image.network(
                'https://ss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/img/logo_top_86d58ae1.png'),
          ),
        ));
  }
}
