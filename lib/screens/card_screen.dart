import 'package:flutter/material.dart';
import 'package:fl_components/widgtes/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              name: 'Atardecer Africano',
              imageUrl:
                  'https://daniaylinga.files.wordpress.com/2015/04/kenya.jpg',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4-BagOksYYHWDBzs4c60UY7xfTzXP25sMVg&usqp=CAU',
            ),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf2UA2Q-yCHcuFls4TqI5WWRxenafZ1BN0mw&usqp=CAU'),
            SizedBox(height: 10),
            CustomCardType2(
              name: 'Primavera',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_kjXxkqXog81CD2olSDquVyi92iu-GVCH0w&usqp=CAU',
            ),
            SizedBox(height: 10),
          ]),
    );
  }
}
