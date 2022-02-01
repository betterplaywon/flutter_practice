import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  //앱 구동 시작 명령어
  runApp( MaterialApp(
      home: MyApp()
  )
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  var a = 1;
  var name = ['Flutter','React','Interview'];
  var count = [0,0,0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEST'),
      ),
        body:ListView.builder(
          itemCount: 3,
        itemBuilder: (context,i){
          return ListTile(
            leading: Icon(Icons.contact_page),
            title: Text(name[i]),
            );
        },
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return TestDialog();
          });
        },
      ),
      );
  }
}


class TestDialog extends StatelessWidget {
  const TestDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Contact', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
      content: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Your Contact'
        ),
      ),
      actions: <Widget>[
        TextButton(onPressed: (){}, child: Text('cancel')),
        TextButton(onPressed: (){}, child: Text('OK')),
      ],
    );
  }
}
