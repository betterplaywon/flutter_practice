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
  List<Contact> name = [];
  List<int> count = [0,0,0];


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
        title: Text(name.length.toString()),actions: [
          IconButton(onPressed: (){ getPermission(); },
          icon: Icon(Icons.contacts))],
      ),
        body:ListView.builder(
          itemCount: name.length,
        itemBuilder: (context,i){
          return ListTile(
            leading: Icon(Icons.contact_page),
            title: Text(name[i].familyName ?? '임시 저장'),
            
            // 추가한 유저 데이터 삭제 처리 기능 제작 중
            trailing: TextButton(onPressed:(){setState(() {
              name.removeAt;
            });}, child: Text('Delete')),
            );
        },
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return TestDialog(name:name, addName:addName,);
          });
        },
      ),
      );
  }
}

class TestDialog extends StatelessWidget {
  TestDialog({Key? key, this.name, this.addName,this.contacts}) : super(key: key);

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
            TextButton(onPressed: (){
            var plusPerson = Contact();
            plusPerson.familyName = inputData.text;
            ContactsService.addContact(plusPerson);
            addName(inputData.text);
            Navigator.pop(context);},
                child: Text('OK')),

            TextButton(onPressed: (){Navigator.pop(context);}, child: Text('CANCEL')),
          ],
        ),
      ),
    );
  }
}