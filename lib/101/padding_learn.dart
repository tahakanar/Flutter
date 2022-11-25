import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(children: [
          Padding(
            padding: ProjectPadding.pagePaddingRightOnly +
                ProjectPadding.pagePaddingVertical,
            child: Container(
              color: Colors.white,
              height: 100,
              width: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Container(
              color: Colors.white,
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Container(
              color: Colors.white,
              height: 150,
            ),
          )
        ]),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 20);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
