import 'package:flutter/material.dart';

class DatePickerTest extends StatefulWidget {
  const DatePickerTest({super.key});

  @override
  State<DatePickerTest> createState() => _DataPickerTestState();
}

class _DataPickerTestState extends State<DatePickerTest> {
  DateTime? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker'),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: Text('Selsect Date'),
            onPressed: (){
              Future<DateTime?> selectedDate = showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2024),
                builder: (BuildContext context, Widget? child){
                  return Theme(
                    data: ThemeData.dark(),
                    child: child!,
                  );
                },
              );
              selectedDate.then((dateTime) {
                setState(() {
                  selectedTime = dateTime;
                });
              }
              );
            },
          ),
          Text('$selectedTime'),
        ],
      ),
    );
  }
}
