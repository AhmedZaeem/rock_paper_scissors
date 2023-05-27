import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rock_paper_scissors/PlayMainMenu.dart';

import 'HowToPlay.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(height: 40),
        InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PlayMainMenu(),
                ));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 80),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white, width: 4)),
            child: const Text(
              'Play',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ),
        ),
        const SizedBox(height: 16),
        InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HowToPlay(),
                ));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white, width: 4)),
            child: const Text(
              'How to play',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ),
        ),
      ],
    );
  }
}
