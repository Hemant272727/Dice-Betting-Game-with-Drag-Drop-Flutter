import 'dart:async';

import 'package:drag_drop_animation/constants/color_constants.dart';
import 'package:drag_drop_animation/widgets/bet_amount_widget.dart';
import 'package:drag_drop_animation/widgets/bet_change_widget.dart';
import 'package:drag_drop_animation/widgets/coin_widget.dart';
import 'package:drag_drop_animation/widgets/dice_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'constants/game_constant.dart';
import 'constants/image_constants.dart';
import 'widgets/dice_amount_widget.dart';

class BettingPage extends StatefulWidget {
  BettingPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BettingPageState createState() => _BettingPageState();
}

class _BettingPageState extends State<BettingPage> {
  int _coinSelectedIndex = -1;
  int _updatedAmountDuration = 300;

  String _updatedAmount = '';

  bool _betAmountPosition = false;

  List<int> _betArray = [0, 0, 0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: 100.0.w,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CoinWidget(
                          chipClick: () {
                            coinClicked(0);
                          },
                          chipStringList: GameConst().chipImageArray,
                          coinSelectedIndex: _coinSelectedIndex,
                          disableChipStringList:
                              GameConst().disableChipImageArray,
                          index: 0,
                          text: GameConst().numberArray[0].toString()),
                      CoinWidget(
                          chipClick: () {
                            coinClicked(1);
                          },
                          chipStringList: GameConst().chipImageArray,
                          coinSelectedIndex: _coinSelectedIndex,
                          disableChipStringList:
                              GameConst().disableChipImageArray,
                          index: 1,
                          text: GameConst().numberArray[1].toString()),
                      CoinWidget(
                          chipClick: () {
                            coinClicked(2);
                          },
                          chipStringList: GameConst().chipImageArray,
                          coinSelectedIndex: _coinSelectedIndex,
                          disableChipStringList:
                              GameConst().disableChipImageArray,
                          index: 2,
                          text: GameConst().numberArray[2].toString())
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CoinWidget(
                          chipClick: () {
                            coinClicked(3);
                          },
                          chipStringList: GameConst().chipImageArray,
                          coinSelectedIndex: _coinSelectedIndex,
                          disableChipStringList:
                              GameConst().disableChipImageArray,
                          index: 3,
                          text: GameConst().numberArray[3].toString()),
                      CoinWidget(
                          chipClick: () {
                            coinClicked(4);
                          },
                          chipStringList: GameConst().chipImageArray,
                          coinSelectedIndex: _coinSelectedIndex,
                          disableChipStringList:
                              GameConst().disableChipImageArray,
                          index: 4,
                          text: GameConst().numberArray[4].toString()),
                      CoinWidget(
                          chipClick: () {
                            coinClicked(5);
                          },
                          chipStringList: GameConst().chipImageArray,
                          coinSelectedIndex: _coinSelectedIndex,
                          disableChipStringList:
                              GameConst().disableChipImageArray,
                          index: 5,
                          text: GameConst().numberArray[5].toString())
                    ],
                  ),
                ],
              ),
            ),
            BetChangeWidget(
              defaultPosition: _betAmountPosition,
              duration: _updatedAmountDuration,
              changeAmount: _updatedAmount,
            ),
            Card(
              color: Color(ColorConst.goldenColor),
              child: Container(
                padding: EdgeInsets.all(2.0.w),
                child: Text(
                  'Total Bet : ${getTotalBid()}',
                  style: TextStyle(
                    color: Color(ColorConst.blackColor),
                    fontSize: 10.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _updatedAmount = '-${getTotalBid()}';
                  _betAmountPosition = true;
                  _updatedAmountDuration = 300;
                  Timer(Duration(milliseconds: 300), () {
                    setState(() {
                      _betAmountPosition = false;
                      _updatedAmountDuration = 1;
                    });
                  });
                  _betArray = [0, 0, 0, 0, 0, 0];
                  _coinSelectedIndex = -1;
                });
              },
              child: Card(
                color: Color(ColorConst.goldenColor),
                child: Container(
                  padding: EdgeInsets.all(2.0.w),
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      color: Color(ColorConst.blackColor),
                      fontSize: 10.0.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                width: 100.0.w,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DiceAmountWidget(
                            diceDragged: (value) =>
                                diceClicked(value[1], value[0]),
                            diceImage: ImageConst.dice1,
                            betAmount: _betArray[0],
                            index: 0,
                          ),
                          DiceAmountWidget(
                            diceDragged: (value) =>
                                diceClicked(value[1], value[0]),
                            diceImage: ImageConst.dice2,
                            betAmount: _betArray[1],
                            index: 1,
                          ),
                          DiceAmountWidget(
                            diceDragged: (value) =>
                                diceClicked(value[1], value[0]),
                            diceImage: ImageConst.dice3,
                            betAmount: _betArray[2],
                            index: 2,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DiceAmountWidget(
                            diceDragged: (value) =>
                                diceClicked(value[1], value[0]),
                            diceImage: ImageConst.dice4,
                            betAmount: _betArray[3],
                            index: 3,
                          ),
                          DiceAmountWidget(
                            diceDragged: (value) =>
                                diceClicked(value[1], value[0]),
                            diceImage: ImageConst.dice5,
                            betAmount: _betArray[4],
                            index: 4,
                          ),
                          DiceAmountWidget(
                            diceDragged: (value) =>
                                diceClicked(value[1], value[0]),
                            diceImage: ImageConst.dice6,
                            betAmount: _betArray[5],
                            index: 5,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int getTotalBid() {
    return _betArray[0] +
        _betArray[1] +
        _betArray[2] +
        _betArray[3] +
        _betArray[4] +
        _betArray[5];
  }

  void diceClicked(int index, int coinIndex) {
    if (coinIndex != -1) {
      setState(() {
        _coinSelectedIndex = coinIndex;
      });
    }

    setState(() {
      _betArray[index] += GameConst().numberArray[_coinSelectedIndex];
      _updatedAmount = '+${GameConst().numberArray[_coinSelectedIndex]}';
      _betAmountPosition = true;
      _updatedAmountDuration = 300;
      Timer(Duration(milliseconds: 300), () {
        setState(() {
          _betAmountPosition = false;
          _updatedAmountDuration = 1;
        });
      });
    });
  }

  void coinClicked(int index) {
    setState(() {
      _coinSelectedIndex = index;
    });
  }
}
