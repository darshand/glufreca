import 'package:flutter/material.dart';

void main() {
  runApp(new HelloWorld());
}

class HelloWorld extends StatelessWidget {

  Widget buildText(String txt) {
    return Text(
      txt,
      style: TextStyle(fontSize: 30.00, fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Hello World"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildText('Hello World'),
                buildText('Hello Earth')
              ],
            ),
          )),
    );
  }
}
