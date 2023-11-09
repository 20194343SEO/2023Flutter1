import 'package:flutter/material.dart';

class AlterDlg extends StatefulWidget {
  const AlterDlg({super.key});

  @override
  State<AlterDlg> createState() => _AlterDlgState();
}

class _AlterDlgState extends State<AlterDlg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aler Dialog'),
        backgroundColor: Colors.purple,
      ),
      body: ElevatedButton(
        child: Text('Show Dialog'),
        onPressed: (){
          showDialog(
              context: context,
              builder: (BuildContext context){
                return AlertDialog(
                  title: Text('제목'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: [
                        Text('Alter Dialog 입니다.'),
                        Text('확인을 눌러주세요.')
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        child: Text('확인'),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text('취소'),
                    ),
                  ],
                );
              },
          );
        },
      ),
    );
  }
}
