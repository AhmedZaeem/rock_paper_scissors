import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rock_paper_scissors/InsaneModeHowTo.dart';

class HowToPlay extends StatefulWidget {
  const HowToPlay({Key? key}) : super(key: key);

  @override
  State<HowToPlay> createState() => _HowToPlayState();
}

class _HowToPlayState extends State<HowToPlay> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PixelSplitter'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff192345),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white, width: 1)),
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 64,
                  height: 64,
                ),
              ),
              const SizedBox(height: 24),
              InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ModesHowTo(0)));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white, width: 4)),
                  child: const Text(
                    'Normal mode',
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ModesHowTo(1)));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white, width: 4)),
                  child: const Text(
                    'Insane mode',
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 88),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white, width: 4)),
                  child: const Text(
                    'Back',
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
