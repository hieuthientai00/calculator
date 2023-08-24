//Nơi này dùng để chứa các Widget
import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  Button1({super.key, required this.btnText});
  String btnText = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      child: Center(
          child: Text(
        btnText,
        style: TextStyle(color: Colors.black),
      )),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60), color: Colors.white),
    );
  }
}

class Button2 extends StatelessWidget {
  Button2({super.key, required this.btnText});
  String btnText = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      child: Center(
          child: Text(
        btnText,
        style: TextStyle(color: Colors.black),
      )),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60), color: Colors.grey),
    );
  }
}

class Button3 extends StatelessWidget {
  Button3({super.key, required this.btnText});
  String btnText = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      child: Center(
          child: Text(
        btnText,
        style: TextStyle(color: Colors.black),
      )),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60), color: Colors.orange),
    );
  }
}
