import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(imagePath: 'assets/1.png', title: 'Abstract Art 1', price: 3.4),
      CollectionModel(imagePath: 'assets/1.png', title: 'Abstract Art 2', price: 3.4),
      CollectionModel(imagePath: 'assets/1.png', title: 'Abstract Art 3', price: 3.4),
      CollectionModel(imagePath: 'assets/1.png', title: 'Abstract Art 4', price: 3.4)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          padding: PaddingUtility().paddingHorizontal,
          itemBuilder: ((context, index) {
            return _CategoryCard(model: _items[index]);
          }),
          itemCount: _items.length),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [
              Expanded(child: Image.asset(_model.imagePath, fit: BoxFit.fill)),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  children: [
                    Expanded(child: Text(_model.title)),
                    Text('\$${_model.price}'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(15);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}
