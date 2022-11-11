import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final games = const <String>[
    'Mario Bross',
    'Gran Turismo',
    'Moto GP',
    'Formula 1',
    'GTA V',
  ];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[900],
          title: const Text(
            'LISTADO DE JUEGOS',
          ),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            textColor: Colors.white,
            title: Text(games[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: games.length,
        ));
  }
}
