import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sweat_coin_app/components/navbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen(
      (event) {
        setState(
          () {
            _user = event;
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _user != null ? const Navbar() : loginPageMethod(context),
      backgroundColor: const Color.fromRGBO(29, 29, 29, 1),
    );
  }

  Stack loginPageMethod(BuildContext context) {
    return Stack(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: Image.asset(
            "assets/lines.png",
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.8,
                    height: MediaQuery.of(context).size.height / 4,
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
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 14,
                child: googleSignInButton(context),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 14,
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _handleGoogleSignIn() {
    try {
      GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
      _auth.signInWithProvider(_googleAuthProvider);
    } catch (error) {
      print(error);
    }
  }

  ElevatedButton googleSignInButton(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Colors.white,
        ),
      ),
      onPressed: _handleGoogleSignIn,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Sign in With Google",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Image.asset(
            "assets/googlelogo.png",
            height: MediaQuery.of(context).size.height / 18,
          ),
        ],
      ),
    );
  }
}
