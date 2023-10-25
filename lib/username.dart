import 'package:flutter/material.dart';

class UsernameTextField extends StatelessWidget {
  UsernameTextField({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(),
      ),
      child: TextField(
        controller: controller,
      ),
    );
  }
}
