import 'package:calc_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(247, 248, 251, 1),
      body: Center(
        child: SizedBox(
          width: 308,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpaceWidget(width: 0, height: 100),
              ExpressionWidget(expression: "6000/2+3227*2"),
              SpaceWidget(width: 0, height: 3),
              ResultWidget(result: "=12,454"),
              Expanded(child: SizedBox()),
              KeyboardWidget(),
              SpaceWidget(width: 0, height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
