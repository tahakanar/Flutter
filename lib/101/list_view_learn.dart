import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              height: 700,
              child: ListView(
                children: [
                  FittedBox(
                      child: Text(
                    'Merhaba',
                    style: Theme.of(context).textTheme.headline1,
                    maxLines: 1,
                  )),
                  Container(
                    color: Colors.red,
                    height: 400,
                  ),
                  const Divider(),
                  SizedBox(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          color: Colors.blue,
                          width: 100,
                        ),
                        Container(
                          color: Colors.green,
                          width: 100,
                        ),
                        Container(
                          color: Colors.yellow,
                          width: 100,
                        ),
                        Container(
                          color: Colors.purple,
                          width: 100,
                        ),
                        Container(
                          color: Colors.red,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                ],
              ),
            ),
          ],
        ));
  }
}
