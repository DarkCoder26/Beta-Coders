import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sweat_coin_app/components/redeem_cards.dart';

class RewardPage extends StatefulWidget {
  const RewardPage({super.key});

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/background.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 10),
                Text(
                  "    rewards",
                  style: GoogleFonts.leagueSpartan(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 10),
                const RedeemCards(),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                const RedeemCards(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
