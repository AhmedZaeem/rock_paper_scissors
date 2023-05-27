import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ModesHowTo extends StatelessWidget {
  int selectedBtn = 0;
  ModesHowTo(this.selectedBtn, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PixelSplitter'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff192345),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white, width: 1)),
                child: SvgPicture.asset(
                  selectedBtn == 0
                      ? 'assets/images/logo.svg'
                      : 'assets/images/logo-bonus.svg',
                  width: 64,
                  height: 64,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white, width: 1)),
                child: SvgPicture.asset(
                  selectedBtn == 1
                      ? 'assets/images/image-rules-bonus.svg'
                      : 'assets/images/image-rules.svg',
                  width: 180,
                  height: 190,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 74),
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
