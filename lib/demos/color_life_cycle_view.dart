import 'package:flutter/material.dart';
import 'color_demos_view.dart';
import 'note_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NoteDemos()));
              setState(() {
                _backgroundColor = Colors.red;
              });
            },
          )
        ],
      ),
      body: Column(children: const [
        Spacer(),
        Expanded(
          child: ColorDemosView(
            initialColor: Colors.red,
          ),
        )
      ]),
    );
  }
}
