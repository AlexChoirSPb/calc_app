import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key, required this.result});

  final String result;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w500,
      fontSize: 48,
      color: Color.fromRGBO(66, 66, 66, 1),
      letterSpacing: 0,
      height: 1.17,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          result,
          style: textStyle,
        ),
      ],
    );
  }
}
