import 'package:flutter/material.dart';

typedef Validator = String? Function(String?);

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  String labelText;
  TextInputType keyboardType;
  bool isObscureText;
  Validator? validator;
  TextEditingController? controller;
  bool filled;
  Color colorTextStyle;
  Color colorBorder;
  int? maxLines;
  CustomTextFormField({
    super.key,
    required this.labelText,
    this.keyboardType = TextInputType.text,
    this.isObscureText = false,
    this.validator,
    this.controller,
    this.filled = true,
    this.colorTextStyle = Colors.white,
    this.colorBorder = Colors.white,
    this.maxLines,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      validator: validator,
      obscureText: isObscureText,
      keyboardType: keyboardType,
      style: TextStyle(color: colorTextStyle),
      decoration: InputDecoration(
        filled: filled,
        fillColor: const Color(0xff0F1F41),
        labelText: labelText,
        labelStyle: TextStyle(color: colorTextStyle),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: colorBorder,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            width: 2,
            color: colorBorder,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            width: 2,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
