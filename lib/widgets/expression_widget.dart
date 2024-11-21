import 'package:flutter/material.dart';

class ExpressionWidget extends StatelessWidget {
  const ExpressionWidget({super.key, required this.expression});

  final String expression;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontFamily: "Poppins",
      fontSize: 24,
      color: Color.fromRGBO(129, 129, 129, 1),
      letterSpacing: 0,
      height: 1.5,
    );

    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(right: 27),
      child: Text(
        expression,
        style: textStyle,
      ),
    );
  }
}
