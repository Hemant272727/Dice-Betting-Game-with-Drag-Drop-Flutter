import 'package:drag_drop_animation/constants/color_constants.dart';
import 'package:drag_drop_animation/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BetAmountWidget extends StatelessWidget {
  const BetAmountWidget({
    @required this.betAmount,
  });

  final int betAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.0.w,
      height: 10.0.w,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConst.bgBetAmount,
          ),
        ),
      ),
      child: Center(
        child: Text(
          betAmount.toString(),
          style: TextStyle(
            color: Color(ColorConst.betAmountColor),
            fontSize: 10.0.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
