import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.text,
      this.isFeel = false,
      this.isMain = false});

  final String text;
  final bool isFeel;
  final bool isMain;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
        fixedSize: const Size(62, 62),
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: isMain
            ? Colors.white
            : isFeel
                ? const Color.fromRGBO(173, 226, 255, 1)
                : const Color.fromRGBO(250, 250, 250, 1),
        elevation: 0,
        side: isFeel || isMain
            ? null
            : const BorderSide(color: Colors.white, width: 1));

    final textStyle = TextStyle(
      fontFamily: "Poppins",
      fontSize: 32,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1,
      color: isFeel
          ? const Color.fromRGBO(16, 157, 255, 1)
          : const Color.fromRGBO(56, 185, 255, 1),
    );

    return ElevatedButton(
      onPressed: () {},
      style: buttonStyle,
      child: Text(
        text,
        style: textStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
