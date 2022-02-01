import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  //앱 구동 시작 명령어
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  var a = 1;
  var name = ['강지원','고태준','양진혁'];
  var count = [0,0,0];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: () {
          setState(() {
            a++;
          });
          },
        ),
      appBar: AppBar(
        title: Text('TEST'),
      ),
        body:ListView.builder(
          itemCount: 3,
        itemBuilder: (context,i){
          return ListTile(
            leading: Text(count[i].toString()),
            title: Text(name[i]),
            trailing: OutlinedButton(
              onPressed: (){
                setState(() {
                  count[i]++;
                });
              },
              child: Text('COUNT BTN'),
            ),
          );
        },
              ),
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
