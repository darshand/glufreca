import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String output = '0';
  double num1 = 0;
  double num2 = 0;
  String operand = '0';
  String temp = '0';

  btnPressed(String btnText) {
    if (btnText == "CLEAR") {
      temp = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "/" ||
        btnText == "x") {
      num1 = double.parse(output);

      operand = btnText;

      temp = "0";
    } else if (btnText == ".") {
      if (temp.contains(".")) {
        print("Already conatains a decimals");
        return;
      } else {
        temp = temp + btnText;
      }
    } else if (btnText == "=") {
      num2 = double.parse(output);

      if (operand == "+") {
        temp = (num1 + num2).toString();
      }
      if (operand == "-") {
        temp = (num1 - num2).toString();
      }
      if (operand == "x") {
        temp = (num1 * num2).toString();
      }
      if (operand == "/") {
        temp = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      temp = temp + btnText;
    }

    setState(() {
      output = temp;
    });
  }

  Widget buildButton(String btnText) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(25.0),
        onPressed: () {
          btnPressed(btnText);
        },
        child: Text(
          btnText,
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(15.0),
              child: Text(
                output,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0,
                ),
              ),
            ),
            Expanded(
              child: Divider(),
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    buildButton('1'),
                    buildButton('2'),
                    buildButton('3'),
                    buildButton('+')
                  ],
                ),
                Row(
                  children: <Widget>[
                    buildButton('4'),
                    buildButton('5'),
                    buildButton('6'),
                    buildButton('-')
                  ],
                ),
                Row(
                  children: <Widget>[
                    buildButton('7'),
                    buildButton('8'),
                    buildButton('9'),
                    buildButton('x')
                  ],
                ),
                Row(
                  children: <Widget>[
                    buildButton('.'),
                    buildButton('0'),
                    buildButton('00'),
                    buildButton('/')
                  ],
                ),
                Row(
                  children: <Widget>[buildButton('CLEAR'), buildButton('=')],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
