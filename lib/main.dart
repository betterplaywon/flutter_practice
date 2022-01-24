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
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: double.infinity, height:50,
           margin: EdgeInsets.all(20),
           decoration: BoxDecoration(
             color: Colors.blue,
             border: Border.all(color:Colors.lightBlue)

           ),
           child: Text('Hi'),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child:  Container(
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

