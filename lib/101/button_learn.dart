import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.blue;
            })),
            child: Text(
              'Save',
              style: Theme.of(context).textTheme.headline5,
            )),
        const ElevatedButton(onPressed: null, child: Text('data')),
        IconButton(onPressed: () {}, icon: const Icon(Icons.ac_unit_rounded)),
        FloatingActionButton(
            onPressed: () => {
                  // Servise İstek at
                  // Sayfanın rengini düzenle
                },
            child: const Icon(Icons.add)),
        OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.zoom_in_sharp),
            label: const Text('data')),
        OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.all(15),
              // shape: const CircleBorder()
            ),
            onPressed: () {},
            child: const SizedBox(
              width: 200,
              child: Text('data'),
            )),
        Container(height: 200, color: Colors.white),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                'Place Bid',
                style: Theme.of(context).textTheme.headline4,
              ),
            ))
      ]),
    );
  }
}

//Borders
// CircleBorder(), RoundedRectangleBorder()