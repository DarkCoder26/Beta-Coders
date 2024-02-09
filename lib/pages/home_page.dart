import 'package:flutter/material.dart';
import 'package:sweatcoin/components/carousel_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(29, 29, 29, 1),
        title: Container(
          margin: const EdgeInsetsDirectional.only(
            top: 40,
            start: 20,
          ),
          child: const Text(
            "home",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(29, 29, 29, 1),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            const CarouselCards(),
          ],
        ),
      ),
    );
  }
}
