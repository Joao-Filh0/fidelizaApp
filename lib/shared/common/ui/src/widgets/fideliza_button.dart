import 'package:flutter/material.dart';

class FidelizaButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isStroked;
  final bool borderPrimaryColor;

  const FidelizaButton(
      {required this.text,
      required this.onPressed,
      this.isStroked = false,
      Key? key,
      this.borderPrimaryColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: isStroked
            ? BorderSide(
                color: borderPrimaryColor
                    ? const Color(0xFF1139F5)
                    : const Color(0XFFffffff))
            : null,
        backgroundColor: isStroked ? null : const Color(0xFF1139F5),
        shadowColor: isStroked ? const Color(0xFF1139F5) : null,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            color:
                isStroked ? const Color(0xFF1139F5) : const Color(0XFFffffff)),
      ),
    );
  }
}
