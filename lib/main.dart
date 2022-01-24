import 'package:contact/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:contact/Widget/bottom_bar.dart';

void main() =>
  //앱 구동 시작 명령어
  runApp(MyApp());
//데이터를 서버로부터 전달받아야 하므로 StatefulWidget으로 생성
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}
  class _MyAppState extends State<MyApp>{
  late TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pracflix',theme: ThemeData(brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white,),

//physics option 적용으로 scroll event 시도에도 고정되어있다.
home: DefaultTabController(length: 4, child: Scaffold(
  body: TabBarView(
    physics: NeverScrollableScrollPhysics(),
    children: <Widget>[
  HomeScreen(),
  SizedBox(child: SizedBox(child: Center(child: Text('search'),),)),
  SizedBox(child: SizedBox(child: Center(child: Text('save'),),)),
  SizedBox(child: SizedBox(child: Center(child: Text('more'),),)),
            ],
          ),
        bottomNavigationBar: Bottom(),
        ),
      )
    );
  }
}
