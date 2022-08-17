import 'package:calculator_app/widgets/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double num1 = 0.0;
  double num2 = 0.0;
  String userInput = '0';
  String answer = '0';
  String res = "";
  String operand = "";

  void btnclick(String val) {
    print(val);

    if (val == 'C') {
      num1 = 0;
      num2 = 0;
      userInput = '0';
      answer = '0';
      res = '';
    } else if (val == 'AC') {
      num1 = 0;
      num2 = 0;
      answer = '';
      res = '';
      userInput = '';
    } else if (val == '+' || val == '-' || val == '*' || val == '/') {
      num1 = double.parse(answer);
      res = '';
      operand = val;
    } else if (val == '=') {
      num2 = double.parse(answer);
      if (operand == "+") {
        res = (num1 + num2).toString();
        userInput = num1.toString() + operand.toString() + num2.toString();
      }
      if (operand == "-") {
        res = (num1 - num2).toString();
        userInput = num1.toString() + operand.toString() + num2.toString();
      }
      if (operand == "/") {
        res = (num1 / num2).toString();
        userInput = num1.toString() + operand.toString() + num2.toString();
      }
      if (operand == "*") {
        res = (num1 * num2).toString();
        userInput = num1.toString() + operand.toString() + num2.toString();
      }
    } else {
      res = int.parse(userInput + val).toString();
    }
    setState(() {});
    answer = res;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                // ignore: sort_child_properties_last
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    userInput,
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                alignment: Alignment.centerRight),
            Container(
                // ignore: sort_child_properties_last
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    answer,
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  ),
                ),
                alignment: Alignment.centerRight),
            Row(
              children: [
                MyButtons(
                  text: "AC",
                  callback: btnclick,
                  textcolor: 0xFFFFFFFF,
                  bgcolor: 0xFF000000,
                ),
                MyButtons(
                  text: "C",
                  callback: btnclick,
                  textcolor: 0xFFFFFFFF,
                  bgcolor: 0xFF000000,
                ),
                MyButtons(
                  text: "<",
                  callback: btnclick,
                  textcolor: 0xFFFFFFFF,
                  bgcolor: 0xFF000000,
                ),
                MyButtons(
                  text: "/",
                  callback: btnclick,
                  textcolor: 0xFFFFFFFF,
                  bgcolor: 0xFF000000,
                )
              ],
            ),
            Row(
              children: [
                MyButtons(
                  text: "9",
                  callback: btnclick,
                  textcolor: 0xFF000000,
                  bgcolor: 0xFFFFFFFF,
                ),
                MyButtons(
                  text: "8",
                  callback: btnclick,
                  textcolor: 0xFF000000,
                  bgcolor: 0xFFFFFFFF,
                ),
                MyButtons(
                  text: "7",
                  callback: btnclick,
                  textcolor: 0xFF000000,
                  bgcolor: 0xFFFFFFFF,
                ),
                MyButtons(
                  text: "*",
                  callback: btnclick,
                  textcolor: 0xFFFFFFFF,
                  bgcolor: 0xFF000000,
                )
              ],
            ),
            Row(
              children: [
                MyButtons(
                  text: "6",
                  callback: btnclick,
                  textcolor: 0xFF000000,
                  bgcolor: 0xFFFFFFFF,
                ),
                MyButtons(
                  text: "5",
                  callback: btnclick,
                  textcolor: 0xFF000000,
                  bgcolor: 0xFFFFFFFF,
                ),
                MyButtons(
                  text: "4",
                  callback: btnclick,
                  textcolor: 0xFF000000,
                  bgcolor: 0xFFFFFFFF,
                ),
                MyButtons(
                  text: "-",
                  callback: btnclick,
                  textcolor: 0xFFFFFFFF,
                  bgcolor: 0xFF000000,
                )
              ],
            ),
            Row(
              children: [
                MyButtons(
                  text: "3",
                  callback: btnclick,
                  textcolor: 0xFF000000,
                  bgcolor: 0xFFFFFFFF,
                ),
                MyButtons(
                  text: "2",
                  callback: btnclick,
                  textcolor: 0xFF000000,
                  bgcolor: 0xFFFFFFFF,
                ),
                MyButtons(
                  text: "1",
                  callback: btnclick,
                  textcolor: 0xFF000000,
                  bgcolor: 0xFFFFFFFF,
                ),
                MyButtons(
                  text: "+",
                  callback: btnclick,
                  textcolor: 0xFFFFFFFF,
                  bgcolor: 0xFF000000,
                )
              ],
            ),
            Row(
              children: [
                MyButtons(
                  text: "+/-",
                  callback: btnclick,
                  textcolor: 0xFF000000,
                  bgcolor: 0xFFFFFFFF,
                ),
                MyButtons(
                  text: "0",
                  callback: btnclick,
                  textcolor: 0xFF000000,
                  bgcolor: 0xFFFFFFFF,
                ),
                MyButtons(
                  text: "00",
                  callback: btnclick,
                  textcolor: 0xFF000000,
                  bgcolor: 0xFFFFFFFF,
                ),
                MyButtons(
                  text: "=",
                  callback: btnclick,
                  textcolor: 0xFFFFFFFF,
                  bgcolor: 0xFF000000,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
