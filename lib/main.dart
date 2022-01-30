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
        appBar: AppBar(
          title: Text('신길동'),
          actions: const [
            IconButton(onPressed: null,
              icon: Icon(Icons.search),
            ),
            IconButton(onPressed: null,
              icon: Icon(Icons.menu),
            ),
            IconButton(onPressed: null,
              icon: Icon(Icons.notifications),
            ),
          ],
        ),
        body: SizedBox(
         child: Row(
          children: [
            Image.asset('assets/TIL.png',width: 250,),
            Column(
              children: [
                Text('Jordan 1 Retro High OG 급처'),
                Text('신길동, 끌올 10분 전'),
                Text('600,000원'),
                Row(
                  children: const [
                    Icon(Icons.favorite),
                    Text('4'),
                  ],
                ),
              ],
            )
          ],
         ),
          ),
        ),
    );
  }
}


