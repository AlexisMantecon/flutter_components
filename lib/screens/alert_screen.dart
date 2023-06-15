import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          /// style: ElevatedButton.styleFrom(
          ///   backgroundColor: Colors.red,
          ///   shape: const StadiumBorder(),
          ///   elevation: 0
          /// ),
            child: const Text("Mostrar alerta"),
            onPressed: () {}),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {},
      ),
    );
  }
}
