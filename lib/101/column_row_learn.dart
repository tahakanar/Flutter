import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4, //%40
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Expanded(child: Container(color: Colors.purple)),
                  Expanded(child: Container(color: Colors.blue)),
                  Expanded(child: Container(color: Colors.yellow)),
                ],
              )),
          const Spacer(flex: 2),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [Text('data'), Text('data2'), Text('data3')],
              )),
          SizedBox(
            height: ProjectBoxHeight.height,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.red,
                  child: const Text('data'),
                )),
                Expanded(
                    child: Container(
                  color: Colors.purple,
                  child: const Text('data2'),
                )),
                Expanded(
                    child: Container(
                  color: Colors.blue,
                  child: const Text('data3'),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectBoxHeight {
  static const double height = 200;
}
