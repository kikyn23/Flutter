import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final games = const <String>[
    'Mario Bross',
    'Gran Turismo',
    'Moto GP',
    'Formula 1',
    'GTA V',
  ];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listt view tipo 1'),
        ),
        body: ListView(
          children: [
            ...games
                .map(
                  (game) => ListTile(
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                )
                .toList()

            /*  */
          ],
        ));
  }
}
