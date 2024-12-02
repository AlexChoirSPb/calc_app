import 'package:flutter/material.dart';

class ActionsWidget extends StatelessWidget {
  const ActionsWidget({super.key, required this.onPressed});

  final void Function(String buttonText, BuildContext context) onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            onPressed("DELETE", context);
          },
          icon: const Icon(Icons.backspace_outlined),
          iconSize: 22,
          color: const Color.fromRGBO(133, 133, 133, 1),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
        )
      ],
    );
  }
}
