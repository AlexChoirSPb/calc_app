import 'package:calc_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String expression = "25*2";
  String result = "50";

  onButtonPressed(String buttonText, BuildContext context) {
    List<String> extractNumbers(String expression) {
      // Регулярное выражение для поиска чисел
      final RegExp regExp = RegExp(r'\d+(\.\d+)?');

      // Ищем все совпадения чисел
      final matches = regExp.allMatches(expression);

      // Извлекаем значения из совпадений
      List<String> result = matches.map((match) => match.group(0)!).toList();

      // Проверяем, заканчивается ли строка на оператор
      if (RegExp(r'[+\-*/%^]$').hasMatch(expression)) {
        result.add(''); // Добавляем пустой элемент в конец
      }

      return result;
    }

    String doesContainDecimal(dynamic result) {
      if (result.toString().contains('.')) {
        List<String> splitDecimal = result.toString().split('.');
        int? decimalPart = int.tryParse(splitDecimal[1]);
        if (decimalPart != null) {
          if (decimalPart > 0) {
            splitDecimal[1] = splitDecimal[1].toString().substring(0, 2);
            return result = splitDecimal.join('.');
          } else {
            result = splitDecimal[0];
          }
        } else {
          result = splitDecimal[0];
        }
      }
      return result;
    }

    bool isNumber(String text) {
      int? textToInt = int.tryParse(text);
      return textToInt != null ? true : false;
    }

    bool isValidClick() {
      if (expression.isEmpty) {
        return false;
      } else {
        String char = expression[expression.length - 1];
        return isNumber(char);
      }
    }

    buttonText = buttonText.toUpperCase();

    setState(() {
      if (buttonText == "AC") {
        expression = "";
        result = "";
      } else if (buttonText == "=") {
        if (result.isNotEmpty) {
          expression = result;
          result = "";
        }
      } else if (buttonText == "DELETE") {
        if (expression.isNotEmpty) {
          expression = expression.substring(0, (expression.length - 1));
        } else {
          expression = "";
        }
      } else if (buttonText == ".") {
        String lastNumber = extractNumbers(expression).last;
        if (isValidClick()) {
          if (lastNumber.contains(".")) {
            return;
          } else {
            expression = expression + buttonText;
          }
        }
      } else if (buttonText == "%" ||
          buttonText == ":" ||
          buttonText == "*" ||
          buttonText == "-" ||
          buttonText == "+") {
        if (isValidClick()) {
          expression = expression + buttonText;
        }
      } else if (buttonText == "+/-") {
        if (isValidClick()) {
          expression = expression.substring(0, expression.length - 1);
        }
      } else {
        expression = expression + buttonText;
      }

      if (extractNumbers(expression).length > 1 && isValidClick()) {
        String finalExpression = expression.replaceAll('*', '*');
        finalExpression = finalExpression.replaceAll(':', '/');
        finalExpression = finalExpression.replaceAll('%', '%');
        try {
          Parser p = Parser();
          Expression exp = p.parse(finalExpression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
          if (result == "Infinity") {
            throw Exception("На ноль делить нельзя:)");
          }
          result = doesContainDecimal(result);
        } catch (e) {
          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text(e.toString()),
              duration: const Duration(seconds: 2),
            ));
          result = "";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 248, 251, 1),
      body: Center(
        child: SizedBox(
          width: 308,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SpaceWidget(width: 0, height: 100),
              ExpressionWidget(expression: expression),
              const SpaceWidget(width: 0, height: 3),
              ResultWidget(result: result),
              const Expanded(child: SizedBox()),
              ActionsWidget(
                onPressed: onButtonPressed,
              ),
              KeyboardWidget(
                onPressed: onButtonPressed,
              ),
              const SpaceWidget(width: 0, height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
