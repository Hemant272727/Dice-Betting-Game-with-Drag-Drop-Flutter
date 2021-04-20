import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'drag_target_screen.dart';
import 'draggable_screen.dart';
import 'main_betting_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizerUtil().init(constraints, orientation);
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // home: BettingPage(),
          // home: DraggableScreen(),
          home: DragTargetScreen(),
        );
      });
    });
  }
}
