import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sweat_coin_app/components/carousel_cards.dart';

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
          child: Text(
            "home",
            style: GoogleFonts.leagueSpartan(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(29, 29, 29, 1),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CarouselCards(),
            SizedBox(height: MediaQuery.of(context).size.height / 9),
            Text(
              "SweatCoins",
              style: GoogleFonts.leagueSpartan(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "10000",
              style: GoogleFonts.leagueSpartan(
                textStyle: const TextStyle(
                  color: Color.fromRGBO(255, 99, 30, 1),
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "streak ",
                  style: GoogleFonts.leagueSpartan(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
                Image.asset("assets/fire_icon.png"),
                SizedBox(width: MediaQuery.of(context).size.width / 3),
                Text(
                  "4",
                  style: GoogleFonts.leagueSpartan(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                ),
                Text(
                  "  days",
                  style: GoogleFonts.leagueSpartan(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
