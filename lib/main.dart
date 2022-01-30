import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  //앱 구동 시작 명령어
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(),
        body:ListView(
          children: [
            Text('aldhasuaudfhda'),
            Text('aldhasuaudfhda'),
            Text('aldhasuaudfhda'),

          ],
        ),
        ),
    );
  }
}


