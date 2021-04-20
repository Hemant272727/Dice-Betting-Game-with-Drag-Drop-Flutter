import 'package:drag_drop_animation/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DragTargetScreen extends StatefulWidget {
  DragTargetScreen({Key key}) : super(key: key);

  @override
  _DragTargetScreenState createState() => _DragTargetScreenState();
}

class _DragTargetScreenState extends State<DragTargetScreen> {
  bool isDroppedOnDropTarget = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Draggable<int>(
            child: SkyBlueCoin(),
            feedback: DarkRedCoin(),
            childWhenDragging: PinkCoin(),
            data: 3,
          ),
          SizedBox(height: 10.0.h),
          DragTarget<int>(
            builder: (context, candidateData, rejectedData) {
              return isDroppedOnDropTarget
                  ? PurpleCoin()
                  : candidateData.isNotEmpty
                      ? BlueCoin()
                      : RedCoin();
            },
            onWillAccept: (value) => true,
            onAccept: (value) {
              setState(() {
                isDroppedOnDropTarget = true;
              });
            },
          )
        ],
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

class PurpleCoin extends StatelessWidget {
  const PurpleCoin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.0.w),
      width: 20.0.w,
      height: 20.0.w,
      child: Image.asset(ImageConst.purpleCoin),
    );
  }
}

class BlueCoin extends StatelessWidget {
  const BlueCoin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.0.w),
      width: 20.0.w,
      height: 20.0.w,
      child: Image.asset(ImageConst.blueCoin),
    );
  }
}

class RedCoin extends StatelessWidget {
  const RedCoin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.0.w),
      width: 20.0.w,
      height: 20.0.w,
      child: Image.asset(ImageConst.redCoin),
    );
  }
}
