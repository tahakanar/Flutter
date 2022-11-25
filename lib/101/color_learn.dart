import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: ColorsItems.sulu,
            child: Text(
              'data',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Theme.of(context).errorColor),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorsItems {
  static const Color porchase = Color.fromARGB(255, 231, 156, 7);

  static const Color sulu = Color.fromARGB(255, 133, 167, 64);
}
