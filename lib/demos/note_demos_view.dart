import 'package:flutter/material.dart';
import 'package:flutter_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);
  final title = 'Created by sidoooo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PadingItems.horizontalPadding,
        child: Column(children: [
          PngImage(name: ImageItems().typeSheet),
          TitleWidget(title: title),
          TitleWidget(title: title),
        ]),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700));
  }
}

class PadingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
}
