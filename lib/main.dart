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
        body: Container(
          height: 150,
         padding: EdgeInsets.all(20),
         child: Row(
          children: [
            Image.asset('assets/TIL.png',width: 250),
            Expanded(child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('오늘의 코딩 연습 교관 구함',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('신길동, 끌올 10분 전'),
                Text('600,000원'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.favorite),
                    Text('4'),
                  ],
                ),
              ],
            ),
            )
          ],
         ),
          ),
        ),
    );
  }
}


