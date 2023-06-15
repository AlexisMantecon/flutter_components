
import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading:
              Icon(Icons.photo_album_outlined, color: AppTheme.primary),
          title: Text("Soy un titulo"),
          subtitle: Text(
              "Adipisicing eu ex duis nulla est tempor. Aliquip dolor proident non ea in consequat est proident veniam. Enim laborum eu duis do aute quis aliqua ea quis non mollit pariatur esse. Pariatur duis anim irure reprehenderit non proident dolore mollit voluptate ea irure aliqua. Anim qui do proident aute sint amet aliqua nisi."),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            TextButton(
              onPressed: () {}, 
              child: const Text("Cancel"),
              ),
              TextButton(
              onPressed: () {}, 
              child: const Text("Ok")
              )
          ],),
        )
      ]),
    );
  }
}
