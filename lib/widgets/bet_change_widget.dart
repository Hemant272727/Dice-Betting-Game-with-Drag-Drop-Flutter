import 'package:drag_drop_animation/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:animated_widgets/animated_widgets.dart';
import 'package:sizer/sizer.dart';

class BetChangeWidget extends StatelessWidget {
  const BetChangeWidget({
    @required this.defaultPosition,
    @required this.duration,
    @required this.changeAmount,
  });

  final bool defaultPosition;
  final int duration;
  final String changeAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Align(
            child: TranslationAnimatedWidget.tween(
              enabled: defaultPosition,
              translationDisabled: Offset(0.0.w, 5.0.w),
              translationEnabled: Offset(0.0.w, -20.0.w),
              duration: Duration(milliseconds: duration),
              child: OpacityAnimatedWidget(
                values: const [0, 1, 1, 1, 1, 1, 1, 0, 0],
                enabled: defaultPosition, //bind with the boolean
                duration: Duration(milliseconds: duration),
                child: Text(
                  changeAmount,
                  style: TextStyle(
                    fontSize: 20.0.sp,
                    color: Color(ColorConst.blackColor),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
