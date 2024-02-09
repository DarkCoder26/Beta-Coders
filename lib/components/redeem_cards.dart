import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class RedeemCards extends StatefulWidget {
  const RedeemCards({super.key});

  @override
  State<RedeemCards> createState() => _RedeemCardsState();
}

class _RedeemCardsState extends State<RedeemCards> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [card(context, "")],
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height / 4,
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
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.10),
          child: Container(
            width: MediaQuery.of(context).size.width / 1.8,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              color: Colors.grey.shade200.withOpacity(0.5),
              borderRadius: BorderRadius.circular(34),
            ),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 4,
                  ),
                  const Text(
                    "SweatCoin",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
