import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  final String _imagePath =
      'https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?202209100141';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        const Image(
          image: AssetImage('assets/1.png'),
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 400,
          width: 400,
          child: PngImage(name: ImageItems().typeSheet),
        ),
        Image.network(_imagePath)
      ]),
    );
  }
}

class ImageItems {
  final String typeSheet = '1';
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/$name.png';
}
