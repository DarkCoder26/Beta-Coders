import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaderBroadPage extends StatefulWidget {
  const LeaderBroadPage({super.key});

  @override
  State<LeaderBroadPage> createState() => _LeaderBroadPageState();
}

class _LeaderBroadPageState extends State<LeaderBroadPage> {
  List<String> leaderList = [
    "Preetinder Singh",
    "Rajas Bhatnagar",
    "Aarav Dudeja",
    "Ujjwal Aggrawal",
    "meow meow",
    "meow meowv2",
    "meow meow v3"
  ];

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
                  "assets/leaderboard.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: MediaQuery.of(context).size.width / 14,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(31, 31, 31, 1),
                borderRadius: BorderRadius.circular(21),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 4,
                    blurRadius: 5,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: leaderList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width / 10,
                          height: MediaQuery.of(context).size.height / 10,
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: const Color.fromRGBO(24, 20, 19, 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                (index + 1).toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),
                              Text(
                                leaderList[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
