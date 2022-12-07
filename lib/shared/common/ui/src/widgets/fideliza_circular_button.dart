import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FidelizaCircularButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final Color? iconColor;

  const FidelizaCircularButton(
      {Key? key, required this.onPressed, required this.icon, this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Color(0xFFffffff)),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(10.0)),
      child: SvgPicture.asset(
        height: size.height / 18,
        icon,
        color: iconColor,
      ),
    );
  }
}
