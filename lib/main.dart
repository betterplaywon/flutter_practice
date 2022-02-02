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
  var a = 3;
  var name = ['Flutter','React','Interview'];
  var count = [0,0,0];

  increamentNum() {
    setState(() {
      a++;
    });
  }

  addName(subject) {
    setState(() {
      name.add(subject);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(a.toString()),
      ),
        body:ListView.builder(
          itemCount: name.length,
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
            return TestDialog(a:a, increamentNum:increamentNum, name:name, addName:addName);
          });
        },
      ),
      );
  }
}


class TestDialog extends StatelessWidget {
  TestDialog({Key? key, this.a, this.increamentNum,this.name, this.addName}) : super(key: key);

  final a;
  final increamentNum;
  final inputData = TextEditingController();
  final name;
  final addName;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(20),
        width: 250,
        height: 250,
        child: Column(
          children: [
            TextField(controller: inputData),
            TextButton(onPressed: (){increamentNum();addName(inputData.text);}, child: Text('OK')),
            TextButton(onPressed: (){Navigator.pop(context);}, child: Text('CANCEL')),
          ],
        ),
      ),
    );
  }
}