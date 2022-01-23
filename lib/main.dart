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
      home:Scaffold(
        appBar: AppBar(title: Text('Making App')),
        body: Center(
         child: Text('Hi'),
        ),
        bottomNavigationBar: BottomAppBar(
          child:  SizedBox(
            width: 50,
            height:50,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.phone),Icon(Icons.message),Icon(Icons.contact_page)]
            ),
          ),
        )
      )
    );
  }
}

