import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    "Megaman",
    "Metal Gear",
    "Super Smash",
    "Final Fantasy"
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Listview Tipo 2")),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
            onTap: () {
              /// final game = options[index];
              /// print(game);
            },
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.indigo,
            ),
            title: Text(options[index])),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
