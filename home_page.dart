import 'package:flutter/material.dart';
import 'package:calculator_hieunguyenvan/button.dart';
import 'package:calculator_hieunguyenvan/logic.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> creatState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = '';

  @override
  void changeState(String c) {
    setState(() {
      text = text + c;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 360,
            height: 279,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Text(
              text,
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: Button1(btnText: 'AC'),
                onTap: () => changeState('AC'),
              ),
              GestureDetector(
                child: Button1(btnText: '()'),
                onTap: () => changeState('()'),
              ),
              GestureDetector(
                child: Button1(btnText: '%'),
                onTap: () => changeState('%'),
              ),
              GestureDetector(
                child: Button1(btnText: '+'),
                onTap: () => changeState('+'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: Button2(btnText: '1'),
                onTap: () => changeState('1'),
              ),
              GestureDetector(
                child: Button2(btnText: '2'),
                onTap: () => changeState('2'),
              ),
              GestureDetector(
                child: Button2(btnText: '3'),
                onTap: () => changeState('3'),
              ),
              GestureDetector(
                child: Button1(btnText: '-'),
                onTap: () => changeState('-'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: Button2(btnText: '4'),
                onTap: () => changeState('4'),
              ),
              GestureDetector(
                child: Button2(btnText: '5'),
                onTap: () => changeState('5'),
              ),
              GestureDetector(
                child: Button2(btnText: '6'),
                onTap: () => changeState('6'),
              ),
              GestureDetector(
                child: Button1(btnText: 'X'),
                onTap: () => changeState('X'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: Button2(btnText: '7'),
                onTap: () => changeState('7'),
              ),
              GestureDetector(
                child: Button2(btnText: '8'),
                onTap: () => changeState('8'),
              ),
              GestureDetector(
                child: Button2(btnText: '9'),
                onTap: () => changeState('9'),
              ),
              GestureDetector(
                child: Button1(btnText: '/'),
                onTap: () => changeState('/'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: Button2(btnText: '0'),
                onTap: () => changeState('0'),
              ),
              GestureDetector(
                child: Button2(btnText: '.'),
                onTap: () => changeState('.'),
              ),
              GestureDetector(
                child: Button1(btnText: 'x'),
                // Icon(Icons.cancel_presentation)),
                onTap: () => changeState('x'),
              ),
              GestureDetector(
                child: Button3(btnText: '='),
                onTap: () => {
                  setSate(() {
                    if (text.contains('+')) {
                      text = sum(text);
                    }
                    if (text.contains('-')) {
                      text = sub(text);
                    }
                    if (text.contains('X')) {
                      text = mul(text);
                    }
                    if (text.contains('/')) {
                      text = div(text);
                    }
                  })
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
