import 'package:flutter/material.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget{
  var numbersIndex = 0;
  void buttonPressed(){
    if (numbersIndex < 2){
      numbersIndex++;
    } else {
      numbersIndex = 0;
    }
    print('Button Pressed ${numbersIndex}');
  }

  @override
  var numbers = ["One","Two","Three"];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Obeid's First App"),
        ),
        body: Column(
          children: [
            Text(numbers[numbersIndex]),
            ElevatedButton(child: Text('1'),onPressed: buttonPressed),
            ElevatedButton(child: Text('2'),onPressed: buttonPressed),
            ElevatedButton(child: Text('3'),onPressed: buttonPressed),

          ],
        ),
      ),
    );
  }
}