import 'package:flutter/material.dart';
import 'package:contact/Widget/bottom_bar.dart';
void main() =>
  //앱 구동 시작 명령어
  runApp(MyApp());

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
        primaryColor: Colors.black, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white) ),

//physics option 적용으로 scroll event 시도에도 고정되어있다.
home: DefaultTabController(length: 4, child: Scaffold(body: TabBarView(physics: NeverScrollableScrollPhysics(),children: <Widget>[
  SizedBox(child: SizedBox(child: SizedBox(child: Center(child: Text('home'),),))),
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
