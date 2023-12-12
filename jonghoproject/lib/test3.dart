import 'package:flutter/material.dart';

class test3 extends StatefulWidget {
  const test3({super.key});

  @override
  State<test3> createState() => _test3State();
}

class _test3State extends State<test3> {
  String inputText = '출석 현황';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('심층강화학습'),
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
