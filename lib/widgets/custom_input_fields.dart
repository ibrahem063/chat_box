import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final Function(String) onSave;
  final String regEx;
  final String hintText;
  final bool obscureText;

  const CustomFormField(
      {super.key,
      required this.onSave,
      required this.regEx,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onSaved: (value) => onSave(value!),
        cursorColor: Colors.white,
        style: const TextStyle(color: Colors.white),
        obscureText: obscureText,
        validator: (value) {
          RegExp(regEx).hasMatch(value!) ? null : 'Enter a valid value.';
          return null;
        },
        decoration: InputDecoration(
          fillColor: const Color.fromRGBO(30, 29, 37, 1.0),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white54),
        ));
  }
}
