import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enrique Camelo'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
                backgroundColor: Colors.yellow, child: Text('EC')),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 120,
        backgroundImage: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb-7fxZGNqmuM40H_OJUUuRPRtjUTODxNPN_5dnTsLdrsRjkpXj2B9Ej4xUwXnQowv5ao&usqp=CAU'),
      )),
    );
  }
}
