import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              // ignore: prefer_const_constructors
              icon: Icon(Icons.message_outlined,
                  color: Theme.of(context).backgroundColor,
                  size: IconSizes.iconSmall2x)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_outlined,
                  color: iconColors.froly, size: 40)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_outlined,
                  color: iconColors.froly, size: iconSize.iconSmall))
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  static const double iconSmall2x = 80;
}

class IconColors {
  final Color froly = const Color(0xffED617A);
}
