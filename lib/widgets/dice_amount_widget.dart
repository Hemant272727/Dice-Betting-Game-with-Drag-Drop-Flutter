import 'package:drag_drop_animation/constants/image_constants.dart';
import 'package:flutter/material.dart';

import 'bet_amount_widget.dart';
import 'dice_widget.dart';

class DiceAmountWidget extends StatefulWidget {
  final void Function(List<int>) diceDragged;
  final int betAmount;
  final String diceImage;
  final int index;

  DiceAmountWidget({
    @required this.diceDragged,
    @required this.betAmount,
    @required this.diceImage,
    @required this.index,
  });

  @override
  _DiceAmountWidgetState createState() => _DiceAmountWidgetState();
}

class _DiceAmountWidgetState extends State<DiceAmountWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DiceWidget(
          diceDragged: widget.diceDragged, //diceClicked(value[1], value[0]),
          diceString: widget.diceImage,
          index: widget.index,
        ),
        BetAmountWidget(
          betAmount: widget.betAmount,
        ),
      ],
    );
  }
}
