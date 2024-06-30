import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBottom extends StatelessWidget {
  String bottomName;
  Function onButtonClickedCallback;
  CustomBottom({
    super.key,
    required this.bottomName,
    required this.onButtonClickedCallback,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onButtonClickedCallback();
      },
      child: Container(
        alignment: Alignment.center,
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff3255ED),
        ),
        child: Text(
          bottomName,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
