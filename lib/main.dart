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
import 'package:flutter_learn/101/list_view_builder.dart';
import 'package:flutter_learn/101/list_view_learn.dart';
import 'package:flutter_learn/101/navigation_learn.dart';
import 'package:flutter_learn/101/padding_learn.dart';
import 'package:flutter_learn/101/page_view_learn.dart';
import 'package:flutter_learn/101/scaffold_learn.dart';
import 'package:flutter_learn/101/stack_learn.dart';
import 'package:flutter_learn/101/statefull_learn.dart';
import 'package:flutter_learn/101/statefull_life_cycle_learn.dart';
import 'package:flutter_learn/101/stateless_learn.dart';
import 'package:flutter_learn/101/text_field_learn.dart';
import 'package:flutter_learn/101/text_learn_view.dart';
import 'package:flutter_learn/demos/color_demos_view.dart';
import 'package:flutter_learn/demos/color_life_cycle_view.dart';
import 'package:flutter_learn/demos/my_collection_demos.dart';
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
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.grey,
            iconColor: Colors.black,
            border: OutlineInputBorder(),
            labelStyle: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w400),
            floatingLabelStyle: TextStyle(color: Colors.black, fontSize: 18),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          ),
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              // backgroundColor: Colors.blue,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              backgroundColor: Colors.transparent)),
      home: const NavigationLearn(),
    );
  }
}
