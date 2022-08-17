import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String text;
  final int bgcolor;
  final int textcolor;
  final Function callback;

  MyButtons({
    required this.text,
    required this.bgcolor,
    required this.textcolor,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: SizedBox(
          height: 70,
          width: 70,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              child: Text(
                text,
                style: TextStyle(fontSize: 20, color: Color(textcolor)),
              ),
              onPressed: () {
                callback(text);
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  primary: Color(bgcolor)),
            ),
          ),
        ),
      ),
    );
  }
}
