import 'package:flutter/material.dart';
import 'package:flutter_learn/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
              maxLength: 25,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: _InputDecarator().emailInput),
          TextFormField(
            minLines: 2,
            maxLines: 5,
          )
        ],
      ),
    );
  }
}

class _InputDecarator {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.search),
    border: OutlineInputBorder(),
    labelText: LanguageItems.inputName,
    hintText: LanguageItems.inputPlaceHolder,
  );
}
