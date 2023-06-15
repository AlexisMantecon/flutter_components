import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Widget"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  "https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg",
              name: "Un hermoso paisaje 1",
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  "https://cloudfront.slrlounge.com/wp-content/uploads/2020/06/best-landscape-photographers-to-follow-in-2020-1200x675.jpg",
            ),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    "https://cdn.theatlantic.com/media/img/photo/2022/02/top-shots-2021-international-landsc/a01_Marcin_Zajac_Fire-1/original.jpg",
                name: "Un hermoso paisaje 3"),
            SizedBox(height: 100),
          ],
        ));
  }
}
