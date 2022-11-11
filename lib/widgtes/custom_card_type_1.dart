import 'package:flutter/material.dart';

import 'package:fl_components/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
            leading: Icon(
              Icons.account_box,
              color: AppTheme.primary,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Enim esse eiusmod elit dolore aute fugiat reprehenderit quis nulla anim eiusmod nisi. Mollit quis minim sint ad velit est id.')),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(
              onPressed: () {},
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Ok'),
            ),
          ]),
        )
      ]),
    );
  }
}
