import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(color: Colors.red),
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: Column(children: [Expanded(child: Image.network('https://picsum.photos/200')), Text('data')]),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
