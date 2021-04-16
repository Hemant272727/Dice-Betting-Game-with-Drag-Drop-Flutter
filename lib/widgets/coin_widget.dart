import 'package:drag_drop_animation/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CoinWidget extends StatelessWidget {
  const CoinWidget(
      {@required this.index,
      @required this.chipClick,
      @required this.chipStringList,
      @required this.disableChipStringList,
      @required this.coinSelectedIndex,
      @required this.text});

  final int index;
  final void Function() chipClick;
  final List<String> chipStringList;
  final List<String> disableChipStringList;
  final int coinSelectedIndex;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: chipClick,
      child: Draggable<List<int>>(
        childWhenDragging: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color(ColorConst.buttonBlueColor),
                blurRadius: 8,
              ),
            ],
          ),
          padding: const EdgeInsets.all(4.0),
          width: 20.0.w,
          height: 20.0.w,
          child: Stack(
            children: [
              Image.asset(chipStringList[index]),
              Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Color(ColorConst.whiteColor),
                    fontSize: 10.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
        feedback: Container(
          width: 20.0.w,
          height: 20.0.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color(ColorConst.buttonBlueColor),
                blurRadius: 8,
              ),
            ],
          ),
          padding: const EdgeInsets.all(4.0),
          child: Stack(
            children: [
              Image.asset(chipStringList[index]),
              Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Color(ColorConst.whiteColor),
                    fontSize: 10.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
        data: [index],
        child: Container(
          decoration: coinSelectedIndex == index
              ? const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(ColorConst.buttonBlueColor),
                      blurRadius: 8,
                    ),
                  ],
                )
              : const BoxDecoration(),
          padding: const EdgeInsets.all(4.0),
          width: 20.0.w,
          height: 20.0.w,
          child: Stack(
            children: [
              Image.asset((coinSelectedIndex == index)
                  ? chipStringList[index]
                  : disableChipStringList[index]),
              Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Color(ColorConst.whiteColor),
                    fontSize: 10.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
