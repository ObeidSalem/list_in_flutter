// Using List in Flutter
// We learn a little bit about creating your app from scratch and using buttons and creating actions.
//
// In this assignment, you will create:
//
// 1) a flutter app
//
// 2) create an object with hard coded list of items, for example apple, orange, rambutan...
//
// 3) Create a textbox widget to enter a choice of 1,2,3,or ...
//
// 4, Create a button to access the list and display the content of the list depending on what was chosen on the textbox.
//
// So if 1 is entered in the textbox, than, display apple.
//
// Create a github, and submit the link to your repo for this assignment.

import 'package:flutter/material.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {
  var fruitIndex = 0;
  String dropDownValue = "Choose Fruit";

  @override
  var fruitList = [" ", "Apple", "Orange", "Rambutan"];
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        // fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 72.0,
              fontWeight: FontWeight.bold
          ),
          headline6: TextStyle(
              fontSize: 26.0,
              fontStyle: FontStyle.italic
          ),
          bodyText2: TextStyle(
              fontSize: 44.0,
              fontFamily: 'Hind'
          ),
        ),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ElevatedButton.styleFrom(
        //     textStyle: const TextStyle(
        //       fontSize: 30,
        //     ),
        //   ),
        // ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fruit List App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${fruitList[fruitIndex]}\n\n'),
              DropdownButton<String>(
                value: dropDownValue,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 34,
                elevation: 16,
                style: const TextStyle(color: Colors.purple, fontSize: 25),
                underline: Container(
                  height: 2,
                  color: Colors.purple,
                ),
                items: <String>['Choose Fruit', "Apple", "Orange", "Rambutan"].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropDownValue = newValue!;
                    if (newValue == 'Choose Fruit')
                      fruitIndex = 0;
                    else if (newValue==fruitList[1])
                      fruitIndex = 1;
                    else if (newValue==fruitList[2])
                      fruitIndex = 2;
                    else if (newValue==fruitList[3])
                      fruitIndex = 3;
                    else
                      fruitIndex = 0;
                  });
                },              )
              // ElevatedButton(child: Text('   apple    '), onPressed: () => {
              //   setState(() {
              //     fruitIndex = 1;
              //   }),
              //   print('Button Pressed, fruitIndex value is ${fruitIndex} now'),
              // }),
              // ElevatedButton(child: Text('  orange   '),onPressed: () => {
              //   setState(() {
              //     fruitIndex = 2;
              //   }),
              //   print('Button Pressed, fruitIndex value is ${fruitIndex} now'),
              // }),
              // ElevatedButton(child: Text('rambutan'),onPressed: () => {
              //   setState(() {
              //     fruitIndex = 3;
              //   }),
              //   print('Button Pressed, fruitIndex value is ${fruitIndex} now'),
              // }),
              // ElevatedButton(child: Text('    Clear    '),onPressed: () => {
              //   setState(() {
              //     fruitIndex = 0;
              //   }),
              //   print('Button Pressed, fruitIndex value is ${fruitIndex} now'),
              // }),
            ],
          ),
        ),
      ),
    );
  }
}