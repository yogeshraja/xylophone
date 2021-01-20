import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  void setSelected(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text('Form App'),
          ),
        ),
        body: Container(
          width: 1000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RadioListTile(
                value: 1,
                title: Text('True'),
                groupValue: selectedRadio,
                onChanged: (val) {
                  setSelected(val);
                },
              ),
              RadioListTile(
                value: 2,
                title: Text('False'),
                groupValue: selectedRadio,
                onChanged: (val) {
                  setSelected(val);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
