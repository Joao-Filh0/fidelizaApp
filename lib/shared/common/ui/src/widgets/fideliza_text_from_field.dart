import 'package:flutter/material.dart';

class FidelizaTextFromField extends StatefulWidget {
  final bool isSecure;
  final double fontSize;
  final Color? textColor;
  final String? fontFamily;
  final String text;
  final String hint;
  final int maxLine;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  const FidelizaTextFromField(
      {this.fontSize = 20.0,
      this.validator,
      this.textColor,
      this.fontFamily,
      this.hint = "",
      this.isSecure = false,
      this.text = "",
      this.controller,
      this.maxLine = 1,
      Key? key})
      : super(key: key);

  @override
  State<FidelizaTextFromField> createState() => _FidelizaTextFromFieldState();
}

class _FidelizaTextFromFieldState extends State<FidelizaTextFromField> {
  bool isPassword = false;

  @override
  void initState() {
    super.initState();
    isPassword = widget.isSecure;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      controller: widget.controller,
      obscureText: isPassword,
      cursorColor: Colors.redAccent,
      style: TextStyle(
          fontSize: widget.fontSize,
          fontFamily: widget.fontFamily,
          color: widget.textColor ?? const Color(0XFF333333)),
      decoration: InputDecoration(
        focusedErrorBorder:_border(Colors.red) ,
        suffixIcon: widget.isSecure
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isPassword = !isPassword;
                  });
                },
                child: Icon(
                  isPassword ? Icons.visibility : Icons.visibility_off,
                  color: widget.textColor ?? const Color(0XFFffffff),
                ),
              )
            : null,
        contentPadding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
        hintText: widget.hint,
        hintStyle: const TextStyle(color: Color(0XFFffffff)),
        errorBorder: _border(Colors.red),
        enabledBorder: _border(),
        border: _border(),
        focusedBorder: _border(),
      ),

    );
  }

  OutlineInputBorder _border([Color? color]) => OutlineInputBorder(
        borderSide:
            BorderSide(color: color ?? const Color(0XFFffffff), width: 0.5),
      );
}
