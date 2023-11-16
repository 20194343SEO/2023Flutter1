import 'package:ch06/Person.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key?key});
  //final Person person; //key ?

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Text('Hi~~~~~~~~~~~~~~'),
          SizedBox(
            height: 45,
          ),
          ElevatedButton(
            child: Text('이전 페이지로 이동'),
            onPressed: (){
              final person = Person('김길동', 40);
              Navigator.pop(context, person);
            },
          ),
        ],
      ),
    );
  }
}
