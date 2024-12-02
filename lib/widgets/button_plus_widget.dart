import 'package:flutter/material.dart';

class ButtonPlusWidget extends StatelessWidget {
  const ButtonPlusWidget({super.key, required this.onPressed});

  final void Function(String buttonText, BuildContext context) onPressed;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      fixedSize: const Size(62, 146),
      alignment: Alignment.center,
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      backgroundColor: const Color.fromRGBO(173, 226, 255, 1),
      elevation: 0,
    );

    const textStyle = TextStyle(
      fontFamily: "Poppins",
      fontSize: 32,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1,
      color: Color.fromRGBO(16, 157, 255, 1),
    );

    return ElevatedButton(
      onPressed: () {
        onPressed("+", context);
      },
      style: buttonStyle,
      child: const Text(
        "+",
        style: textStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
