import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/101/app_bar.dart';
import 'package:flutter_learn/101/button_learn.dart';
import 'package:flutter_learn/101/card_learn.dart';
import 'package:flutter_learn/101/color_learn.dart';
import 'package:flutter_learn/101/column_row_learn.dart';
import 'package:flutter_learn/101/container_sized_box_learn.dart';
import 'package:flutter_learn/101/custom_widget_learn.dart';
import 'package:flutter_learn/101/icon_learn.dart';
import 'package:flutter_learn/101/image_learn.dart';
import 'package:flutter_learn/101/list_tile_learn.dart';
import 'package:flutter_learn/101/padding_learn.dart';
import 'package:flutter_learn/101/page_view_learn.dart';
import 'package:flutter_learn/101/scaffold_learn.dart';
import 'package:flutter_learn/101/stack_learn.dart';
import 'package:flutter_learn/101/statefull_learn.dart';
import 'package:flutter_learn/101/statefull_life_cycle_learn.dart';
import 'package:flutter_learn/101/stateless_learn.dart';
import 'package:flutter_learn/101/text_field_learn.dart';
import 'package:flutter_learn/101/text_learn_view.dart';
import 'package:flutter_learn/demos/note_demos_view.dart';
import 'package:flutter_learn/101/indicator_learn.dart';
import 'package:flutter_learn/demos/stack_demo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
          listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
          cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          errorColor: ColorsItems.porchase,
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              // backgroundColor: Colors.blue,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              backgroundColor: Colors.transparent)),
      home: const TextFieldLearn(),
    );
  }
}