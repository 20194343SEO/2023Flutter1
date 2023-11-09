import 'package:flutter/material.dart';

class CheckboxTest extends StatefulWidget {
  const CheckboxTest({super.key});

  @override
  State<CheckboxTest> createState() => _CheckboxTestState();
}

class _CheckboxTestState extends State<CheckboxTest> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Test'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            Checkbox(//추상클래스나? 인터페이스로 구현
              value: isChecked,
              onChanged: (value){
                setState(() {
                  isChecked = value; //value의 불 타입 이건 널이 아니야 알려준다
                });
              },
            ),
            SizedBox(height: 50,),
            Switch(
                value: isChecked!,
                onChanged: (value){
                  setState(() {
                    isChecked = value; //value의 불 타입 이건 널이 아니야 알려준다
                  });
                }
            ),
          ],
        ),
      ),
    );
  }
}
