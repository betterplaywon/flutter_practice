// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';

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
  var name = [];
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

  getPermission() async {
    var status = await Permission.contacts.status;
    if (status.isGranted) {
      print('허락됨');
      var contacts = await ContactsService.getContacts();
      print(contacts);
      setState(() {
        name = contacts;
      });
    } else if (status.isDenied) {
      print('거절됨');
      Permission.contacts.request();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(a.toString()),actions: [
          IconButton(onPressed: (){ getPermission(); },
          icon: Icon(Icons.contacts))],
      ),
        body:ListView.builder(
          itemCount: name.length,
        itemBuilder: (context,i){
          return ListTile(
            leading: Icon(Icons.contact_page),
            title: Text(name[i].familyName),
            trailing: TextButton(onPressed:(){setState(() {
              name.removeAt;
            });}, child: Text('Delete')),
            );
        },
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return TestDialog(a:a, increamentNum:increamentNum, name:name, addName:addName, contacts:contacts);
          });
        },
      ),
      );
  }
}


class TestDialog extends StatelessWidget {
  TestDialog({Key? key, this.a, this.increamentNum,this.name, this.addName,this.contacts}) : super(key: key);

  final a;
  final increamentNum;
  final inputData = TextEditingController();
  final name;
  final addName;
  final contacts;

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
            TextButton(onPressed: (){increamentNum();addName(inputData.text);
            var newContacts = contacts;
            newContacts.givenName = inputData.text; //새로운 연락처 생성
            ContactsService.addContact(newContacts);// 실제 연락처에 데이터 삽입
            addName(newContacts);
            Navigator.pop(context);}, child: Text('OK')),
            TextButton(onPressed: (){Navigator.pop(context);}, child: Text('CANCEL')),
          ],
        ),
      ),
    );
  }
}