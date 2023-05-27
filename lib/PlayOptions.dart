import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rock_paper_scissors/Game.dart';

class PlayOptions extends StatelessWidget {
  int gameMode;
  PlayOptions(this.gameMode, {Key? key}) : super(key: key);
  var numRoundsET = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PixelSplitter'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff192345),
        body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: SvgPicture.asset(
                    gameMode == 0
                        ? 'assets/images/logo.svg'
                        : 'assets/images/logo-bonus.svg',
                    width: 80,
                    height: 80,
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 256),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white, width: 4)),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,
                    controller: numRoundsET,
                    decoration: const InputDecoration(
                      hintText: '   number of max rounds',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.white, width: 4)),
                        child: const Text(
                          'Back',
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        int numRounds;
                        if (numRoundsET.text.isEmpty ||
                            int.parse(numRoundsET.text.toString()) <= 0) {
                          Fluttertoast.showToast(
                              msg: 'Please enter a valid number of rounds',
                              fontSize: 32,
                              gravity: ToastGravity.BOTTOM,
                              toastLength: Toast.LENGTH_LONG,
                              backgroundColor: Colors.white);
                        } else {
                          numRounds = int.parse(numRoundsET.text.toString());
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Game(numRounds, gameMode, 0)));
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.white, width: 4)),
                        child: const Text(
                          'Start',
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
