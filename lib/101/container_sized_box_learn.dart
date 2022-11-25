import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              width: 300,
              height: 200,
              child: Text('a' * 500),
            ),
            const SizedBox.shrink(),
            SizedBox.square(
              dimension: 50,
              child: Text('b' * 50),
            ),
            Container(
              height: 50,
              constraints: const BoxConstraints(
                  maxWidth: 150, minWidth: 20, maxHeight: 100),
              padding: const EdgeInsets.all(10),
              decoration: ProjectUtility.boxDecoration,
              child: const Text('Deneme Yazısı'),
            )
          ],
        ));
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(colors: [Colors.yellow, Colors.black]),
      boxShadow: const [
        BoxShadow(blurRadius: 40, spreadRadius: 14, color: Colors.blue)
      ],
      border: Border.all(width: 3, color: Colors.blue));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            gradient:
                const LinearGradient(colors: [Colors.yellow, Colors.black]),
            boxShadow: const [
              BoxShadow(
                  blurRadius: 40,
                  spreadRadius: 14,
                  color: Color.fromARGB(255, 20, 40, 57))
            ],
            border:
                Border.all(width: 3, color: Color.fromARGB(255, 36, 44, 50)));
}
