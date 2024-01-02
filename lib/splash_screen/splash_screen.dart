import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        const Duration(
            seconds: 4), // Adjust  the  duration according to requirements.
        // For Navigation
        () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const HomeScren(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
            Colors.deepPurple,
            Colors.blueGrey,
            // Colors.orange,
            // Colors.pinkAccent
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/background-3.jpeg",
                width: 350,
              ),
              const SizedBox(height: 40),
              Lottie.network(
                  "https://lottie.host/7344b3ff-6e71-485b-bb18-b9fceee68624/sdA0B8LdFS.json",
                  height: 100)
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScren extends StatelessWidget {
  const HomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Welcome to the App!"),
      ),
    );
  }
}
