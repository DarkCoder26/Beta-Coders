import 'package:flutter/material.dart';

class LeaderBroadPage extends StatefulWidget {
  const LeaderBroadPage({super.key});

  @override
  State<LeaderBroadPage> createState() => _LeaderBroadPageState();
}

class _LeaderBroadPageState extends State<LeaderBroadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("leader"),
      ),
    );
  }
}
