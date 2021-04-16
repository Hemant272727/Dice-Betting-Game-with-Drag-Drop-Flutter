import 'package:drag_drop_animation/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DiceWidget extends StatelessWidget {
  const DiceWidget({
    @required this.diceDragged,
    @required this.diceString,
    @required this.index,
  });

  final void Function(List<int>) diceDragged;
  final String diceString;
  final int index;

  @override
  Widget build(BuildContext context) {
    return DragTarget<List<int>>(
      builder: (context, value, rejects) {
        return value.isNotEmpty
            ? Container(
                width: 20.0.w,
                height: 20.0.w,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(ColorConst.goldenColor).withOpacity(0.5),
                      blurRadius: 5,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(diceString),
              )
            : Container(
                width: 20.0.w,
                height: 20.0.w,
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(diceString),
              );
      },
      onWillAccept: (value) => true,
      onAccept: (value) {
        value.add(index);
        diceDragged(value);
      },
    );
  }
}
