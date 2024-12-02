import 'package:calc_app/widgets/button_plus_widget.dart';
import 'package:calc_app/widgets/button_widget.dart';
import 'package:calc_app/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class KeyboardWidget extends StatelessWidget {
  const KeyboardWidget({super.key, required this.onPressed});

  final void Function(String buttonText, BuildContext context) onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              ButtonWidget(
                text: "Ac",
                isMain: true,
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              ButtonWidget(
                text: "7",
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              ButtonWidget(
                text: "4",
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              ButtonWidget(
                text: "1",
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              const ButtonWidget(
                text: "",
                onPressed: null,
              ),
              const SpaceWidget(width: 0, height: 22),
            ],
          ),
          Column(
            children: [
              ButtonWidget(
                text: "%",
                isFeel: true,
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              ButtonWidget(
                text: "8",
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              ButtonWidget(
                text: "5",
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              ButtonWidget(
                text: "2",
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              ButtonWidget(
                text: "0",
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
            ],
          ),
          Column(
            children: [
              ButtonWidget(
                text: ":",
                isFeel: true,
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              ButtonWidget(
                text: "9",
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              ButtonWidget(
                text: "6",
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              ButtonWidget(
                text: "3",
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              ButtonWidget(
                text: ".",
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
            ],
          ),
          Column(
            children: [
              ButtonWidget(
                text: "*",
                isFeel: true,
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              ButtonWidget(
                text: "-",
                isFeel: true,
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              ButtonPlusWidget(
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
              ButtonWidget(
                text: "=",
                isFeel: true,
                onPressed: onPressed,
              ),
              const SpaceWidget(width: 0, height: 22),
            ],
          ),
        ],
      ),
    );
  }
}
