import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rock_paper_scissors/MainMenu.dart';

void main() async {
  runApp(RPS());
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
}

class RPS extends StatefulWidget {
  const RPS({Key? key}) : super(key: key);

  @override
  State<RPS> createState() => _RPSState();
}

class _RPSState extends State<RPS> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PixelSplitter'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff192345),
        body: Container(alignment: Alignment.center, child: const MainMenu()),
      ),
    );
  }
}
