import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.username}) : super(key: key);
  final String name = 'Taha';

  final String? username;

  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome $name',
              style: const TextStyle(
                  wordSpacing: 4,
                  decoration: TextDecoration.underline,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 160, 237, 105),
                  letterSpacing: 4,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
          Text('Hello $name',
              style: ProjectStyles.welcomeStyle,
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
          Text('Hi $name',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ProjectColors.welcomeColor),
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
          Text(username ?? ''),
          Text(keys.welcome),
        ],
      )),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 4,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      color: Color.fromARGB(255, 237, 114, 105),
      letterSpacing: 4,
      fontSize: 24,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = 'Merhaba';
}
