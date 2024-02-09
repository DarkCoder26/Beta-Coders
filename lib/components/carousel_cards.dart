import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselCards extends StatefulWidget {
  const CarouselCards({super.key});

  @override
  State<CarouselCards> createState() => _CarouselCardsState();
}

class _CarouselCardsState extends State<CarouselCards> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        card(context, "assets/walk_card.png"),
        card(context, "assets/cycling_card.png"),
        card(context, "assets/workout_card.png"),
        card(context, "assets/yoga_card.png")
      ],
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height / 4.7,
      ),
    );
  }

  Container card(BuildContext context, String imagePath) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
      ),
      child: FittedBox(
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
