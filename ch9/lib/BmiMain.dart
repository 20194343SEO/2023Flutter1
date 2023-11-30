import 'package:ch9/BmiResult.dart';
import 'package:flutter/material.dart';

class BmiMain extends StatefulWidget {
  const BmiMain({super.key});

  @override
  State<BmiMain> createState() => _BmiMainState();
}

class _BmiMainState extends State<BmiMain> {
  final _formKey = GlobalKey<FormState>();
  final _heightController = TextEditingController();
  final _widghtController = TextEditingController();

  void dispose(){
    _heightController.dispose();
    _widghtController.dispose(); //해지해 주는거 ?
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비만도 계산기'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '키'       //힌트는 보여지는데 키보드 누르면 사라지는것을 의미
                ),
                keyboardType: TextInputType.number,
                controller: _heightController,
                validator: (value){
                  if(value!.trim().isEmpty){
                    return '키 값을 입력하세요.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '몸무게'
                ),
                keyboardType: TextInputType.number,
                controller: _widghtController, //컨트롤러.text에 저장됨 ?
                validator: (value){
                  if(value!.trim().isEmpty){
                    return '몸무게 값을 입력하세요.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)=>BmiResult(
                                  height: double.parse(_heightController.text.trim()), 
                                  weight: double.parse(_widghtController.text.trim()),
                              ),
                          ),
                        );
                      }
                    },
                    child: Text('결과')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
