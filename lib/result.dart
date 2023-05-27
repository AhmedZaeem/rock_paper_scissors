import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class result extends StatelessWidget {
  int gameMode = 0;
  int userInput = 0;
  result(this.gameMode, this.userInput, {Key? key}) : super(key: key);

  int gm = 0;

  int computerChoice = 0;

  var buttons = ['paper', 'scissors', 'rock', 'spock', 'lizard'];

  var colorsArr = [0xff546FF2, 0xffEDA21A, 0xffDC3958, 0xff49BBCF, 0xff8956E5];

  @override
  Widget build(BuildContext context) {
    gm == 0
        ? computerChoice = Random().nextInt(3)
        : computerChoice = Random().nextInt(5);
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PixelSplitter'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff192345),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white38,
                      blurRadius: 1500,
                      offset: Offset(400, -150),
                      spreadRadius: 20,
                    ),
                    BoxShadow(
                      color: Colors.white38,
                      blurRadius: 1500,
                      offset: Offset(300, -60),
                      spreadRadius: 10,
                    ),
                    BoxShadow(
                      color: Colors.white38,
                      blurRadius: 1500,
                      offset: Offset(300, 100),
                      spreadRadius: 10,
                    ),
                    BoxShadow(
                      color: Colors.white38,
                      blurRadius: 1500,
                      offset: Offset(400, 200),
                      spreadRadius: 10,
                    ),
                  ],
                ),
              ),
              Container(
                width: 220,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                margin: EdgeInsets.only(left: 300, top: 16),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white.withOpacity(.5), width: 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      gm == 0
                          ? 'assets/images/logo.svg'
                          : 'assets/images/logo-bonus.svg',
                      width: 64,
                      height: 64,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Column(
                      children: [
                        SizedBox(height: 64),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Color(
                                                colorsArr.elementAt(userInput)),
                                            width: 16)),
                                    padding: EdgeInsets.all(24),
                                    child: SvgPicture.asset(
                                        'assets/images/icon-${buttons.elementAt(userInput)}.svg'),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 32),
                            Column(
                              children: [
                                InkWell(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Color(colorsArr
                                                .elementAt(computerChoice)),
                                            width: 16)),
                                    padding: EdgeInsets.all(24),
                                    child: SvgPicture.asset(
                                        'assets/images/icon-${buttons.elementAt(computerChoice)}.svg'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
