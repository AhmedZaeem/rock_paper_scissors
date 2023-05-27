import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rock_paper_scissors/result.dart';

class Game extends StatefulWidget {
  int gameMode = 0;
  int numOfRounds;
  int score;
  Game(this.numOfRounds, this.gameMode, this.score, {Key? key})
      : super(key: key);

  @override
  State<Game> createState() => _GameState(numOfRounds, gameMode, score);
}

class _GameState extends State<Game> {
  int gameMode;
  int numOfRounds;
  int computerScore = 0;
  int Score = 0;
  int computer = 0;
  Widget? Game;
  _GameState(this.numOfRounds, this.gameMode, this.Score) {
    gameMode == 0 ? Game = NormalMode() : Game = InsaneMode();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'PixelSplitter'),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color(0xff192345),
          body: Container(alignment: Alignment.center, child: Game),
        ));
  }

  Widget NormalMode() {
    int score = Score;
    return Container(
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
                border:
                    Border.all(color: Colors.white.withOpacity(.5), width: 1),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 64,
                  height: 64,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 72,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 11),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Score',
                          style: TextStyle(color: Color(0xffA0A9CD)),
                        ),
                        Text(
                          '$Score',
                          style: const TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => result(0, 0)));
                        });
                      },
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Color(0xff516DF1), width: 16)),
                        padding: EdgeInsets.all(24),
                        child: SvgPicture.asset('assets/images/icon-paper.svg'),
                      ),
                    ),
                    SizedBox(width: 32),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => result(0, 1)));
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Color(0xffEAA61E), width: 16)),
                        padding: EdgeInsets.all(24),
                        child:
                            SvgPicture.asset('assets/images/icon-scissors.svg'),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => result(0, 2)));
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: Color(0xffDE3D55), width: 16)),
                    padding: EdgeInsets.all(24),
                    child: SvgPicture.asset('assets/images/icon-rock.svg'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget InsaneMode() {
    int score = Score;
    return Container(
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
                border:
                    Border.all(color: Colors.white.withOpacity(.5), width: 1),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/logo-bonus.svg',
                  width: 64,
                  height: 64,
                ),
                SizedBox(width: 48),
                Expanded(
                  child: Container(
                    height: 72,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 11),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Score',
                          style: TextStyle(color: Color(0xffA0A9CD)),
                        ),
                        Text(
                          '$score',
                          style: const TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 120),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => result(1, 1)));
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xffEAA41F), width: 8)),
                    padding: EdgeInsets.all(16),
                    child: SvgPicture.asset('assets/images/icon-scissors.svg',
                        width: 32, height: 32),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => result(1, 3)));
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0xff49BACE), width: 8)),
                        padding: EdgeInsets.all(16),
                        child: SvgPicture.asset('assets/images/icon-spock.svg',
                            width: 32, height: 32),
                      ),
                    ),
                    SizedBox(width: 80),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => result(1, 0)));
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0xff516DF1), width: 8)),
                        padding: EdgeInsets.all(16),
                        child: SvgPicture.asset('assets/images/icon-paper.svg',
                            width: 32, height: 32),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => result(1, 4)));
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0xff8B58E0), width: 8)),
                        padding: EdgeInsets.all(16),
                        child: SvgPicture.asset('assets/images/icon-lizard.svg',
                            width: 32, height: 32),
                      ),
                    ),
                    SizedBox(width: 16),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => result(1, 2)));
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Color(0xffDC3C58), width: 8)),
                        padding: EdgeInsets.all(16),
                        child: SvgPicture.asset('assets/images/icon-rock.svg',
                            width: 32, height: 32),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
