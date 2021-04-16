import 'package:drag_drop_animation/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'constants/color_constants.dart';

class DraggableScreen extends StatefulWidget {
  DraggableScreen({Key key}) : super(key: key);

  @override
  _DraggableScreenState createState() => _DraggableScreenState();
}

class _DraggableScreenState extends State<DraggableScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Draggable<int>(
        child: SkyBlueCoin(),
        childWhenDragging: PinkCoin(),
        feedback: DarkRedCoin(),
        data: 3,
      ),
    );
  }
}

class PinkCoin extends StatelessWidget {
  const PinkCoin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.0.w),
      width: 20.0.w,
      height: 20.0.w,
      child: Image.asset(ImageConst.pinkCoin),
    );
  }
}

class DarkRedCoin extends StatelessWidget {
  const DarkRedCoin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0.w,
      height: 20.0.w,
      padding: EdgeInsets.all(1.0.w),
      child: Image.asset(ImageConst.darkRedCoin),
    );
  }
}

class SkyBlueCoin extends StatelessWidget {
  const SkyBlueCoin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.0.w),
      width: 20.0.w,
      height: 20.0.w,
      child: Image.asset(ImageConst.skyBlueCoin),
    );
  }
}
