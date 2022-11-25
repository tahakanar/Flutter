import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Card(
          margin: const EdgeInsets.all(10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: const SizedBox(
            height: 100,
            width: 200,
          ),
        ),
        Card(
          margin: const EdgeInsets.all(10),
          color: Theme.of(context).colorScheme.error,
          child: const SizedBox(
            height: 100,
            width: 100,
          ),
        )
      ]),
    );
  }
}

// Borders
// StadiumBorder(), CircleBorder(), RoundedRectangleBorder()