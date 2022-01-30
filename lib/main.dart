import 'dart:html';

import 'package:flutter/cupertino.dart';
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
          children: <Widget>[
          Container(
          height: 50,
          child: Row(
            children: [
              Icon(Icons.account_circle),
              Text('강지원'),
            ],
          ),
        ),
            Container(
              height: 50,
              child: Row(
                children: [
                  Icon(Icons.account_circle),
                  Text('강지원'),
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                children: [
                  Icon(Icons.account_circle),
                  Text('강지원'),
                ],
              ),
            ),
      ],
      ),
        bottomNavigationBar:bottomBar()
        ),
    );
  }
}


class bottomBar extends StatelessWidget {
  const bottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.phone),
            Icon(Icons.message),
            Icon(Icons.contact_page)
          ],
        ),
      ),
    );
  }
}
