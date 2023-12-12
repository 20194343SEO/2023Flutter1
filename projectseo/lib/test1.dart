import 'package:flutter/material.dart';

class test1 extends StatefulWidget {
  const test1({super.key});

  @override
  State<test1> createState() => _test1State();
}

class _test1State extends State<test1> {
  String inputText = '출석 현황';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('모바일 프로그래밍'),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
        Text('$inputText',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
      SizedBox(
        height: 50,
      ),
      TextField(
        onChanged: (text){
          setState(() {
            inputText = text;
          });
        },
      ),
          SizedBox(
            height: 50,
          ),
          TextField(
            onChanged: (text){
              setState(() {
                inputText = text;
              });
            },
            decoration: InputDecoration(
                labelText: '10월 15일'
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            onChanged: (text){
              setState(() {
                inputText = text;
              });
            },
            decoration: InputDecoration(
                labelText: '10월 22일'
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            onChanged: (text){
              setState(() {
                inputText = text;
              });
            },
            decoration: InputDecoration(
                labelText: '10월 29일'
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            onChanged: (text){
              setState(() {
                inputText = text;
              });
            },
            decoration: InputDecoration(
                labelText: '11월 6일'
            ),
          ),
          TextField(
          ),
        ],
      ),

    );
  }
}
