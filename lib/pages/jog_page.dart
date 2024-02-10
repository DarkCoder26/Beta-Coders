import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class JogPage extends StatefulWidget {
  const JogPage({super.key});

  @override
  State<JogPage> createState() => _JogPageState();
}

class _JogPageState extends State<JogPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/walk run.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 75,
          right: 150,
          child: GestureDetector(
            onTap: () {
              launchUrl(
                Uri.parse("https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                mode: LaunchMode.externalNonBrowserApplication,
              );
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
          ),
        )
      ]),
    );
  }
}
