import 'package:calc_app/widgets/button_plus_widget.dart';
import 'package:calc_app/widgets/button_widget.dart';
import 'package:calc_app/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class KeyboardWidget extends StatelessWidget {
  const KeyboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              ButtonWidget(
                text: "Ac",
                isMain: true,
              ),
              SpaceWidget(width: 0, height: 22),
              ButtonWidget(text: "7"),
              SpaceWidget(width: 0, height: 22),
              ButtonWidget(text: "4"),
              SpaceWidget(width: 0, height: 22),
              ButtonWidget(text: "1"),
              SpaceWidget(width: 0, height: 22),
              ButtonWidget(text: "+/-"),
              SpaceWidget(width: 0, height: 22),
            ],
          ),
          Column(
            children: [
              ButtonWidget(text: "%", isFeel: true),
              SpaceWidget(width: 0, height: 22),
              ButtonWidget(text: "8"),
              SpaceWidget(width: 0, height: 22),
              ButtonWidget(text: "5"),
              SpaceWidget(width: 0, height: 22),
              ButtonWidget(text: "2"),
              SpaceWidget(width: 0, height: 22),
              ButtonWidget(text: "0"),
              SpaceWidget(width: 0, height: 22),
            ],
          ),
          Column(
            children: [
              ButtonWidget(text: ":", isFeel: true),
              SpaceWidget(width: 0, height: 22),
              ButtonWidget(text: "9"),
              SpaceWidget(width: 0, height: 22),
              ButtonWidget(text: "6"),
              SpaceWidget(width: 0, height: 22),
              ButtonWidget(text: "3"),
              SpaceWidget(width: 0, height: 22),
              ButtonWidget(text: "."),
              SpaceWidget(width: 0, height: 22),
            ],
          ),
          Column(
            children: [
              ButtonWidget(text: "*", isFeel: true),
              SpaceWidget(width: 0, height: 22),
              ButtonWidget(text: "-", isFeel: true),
              SpaceWidget(width: 0, height: 22),
              ButtonPlusWidget(),
              SpaceWidget(width: 0, height: 22),
              ButtonWidget(text: "=", isFeel: true),
              SpaceWidget(width: 0, height: 22),
            ],
          ),
        ],
      ),
    );
  }
}
