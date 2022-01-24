import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  void initState(){
    super.initState();
}
@override
  Widget build(BuildContext context) {
    return TopBar();
}
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20,7,20,7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[
        Image.asset('assets/TIL.png',
          fit: BoxFit.contain,
          height: 25,
        ),
        Container(
          padding: EdgeInsets.only(right: 1),
          child: Text(
              'Flutter',
                  style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 1),
          child: Text(
            'Practice',
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 1),
          child: Text(
            'Nice',
            style: TextStyle(fontSize: 14),
          ),
        )

      ],
      ),
    );
  }
}