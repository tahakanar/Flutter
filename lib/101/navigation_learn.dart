import 'package:flutter/material.dart';
import 'package:flutter_learn/101/navigate_detail_learn.dart';
import 'package:flutter_learn/demos/my_collection_demos.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: ((context, index) {
            return const Placeholder(
              color: Colors.red,
            );
          }),
          itemCount: 10),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () {
          navigateToWidget(context, const NavigateDetailLearnDart());
        },
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => widget, fullscreenDialog: true, settings: const RouteSettings()));
  }
}
