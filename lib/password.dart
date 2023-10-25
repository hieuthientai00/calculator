import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  PasswordTextField({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
    );
  }
}
