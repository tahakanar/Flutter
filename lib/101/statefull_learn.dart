import 'package:flutter/material.dart';
import 'package:flutter_learn/product/counter_hello_button.dart';
import 'package:flutter_learn/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  // void increamentValue() {
  //   setState(() {
  //     _countValue++;
  //   });
  // }

  // void decreaseValue() {
  //   setState(() {
  //     _countValue--;
  //   });
  // }

  void _updateCounter(bool isIncreament) {
    setState(() {
      isIncreament ? _countValue++ : _countValue--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _increaseButton(),
          _decreaseButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(_countValue.toString(), style: Theme.of(context).textTheme.headline2),
          ),
          const CounterHelloButton()
        ],
      ),
    );
  }

  FloatingActionButton _increaseButton() {
    return FloatingActionButton(
      onPressed: () {
        // increamentValue();
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _decreaseButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
