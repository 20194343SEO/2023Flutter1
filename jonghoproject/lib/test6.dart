import 'package:flutter/material.dart';

class test6 extends StatefulWidget {
  const test6({super.key});

  @override
  State<test6> createState() => _test6State();
}

class _test6State extends State<test6> {
  String inputText = '출석 현황';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OCU 생활일본어'),
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
