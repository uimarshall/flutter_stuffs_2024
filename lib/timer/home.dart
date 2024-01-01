import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/timer/choose_location.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDBCDCD),
      body: SafeArea(
          child: Column(children: [
        TextButton.icon(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF3A3434),
            // backgroundColor: Colors.white,
            elevation: 0.0,
            alignment: Alignment.topRight,
          ),
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChooseLocation()),
            )
          },
          icon: const Icon(Icons.edit_location),
          label: const Text('Edit location'),
        )
      ])),
    );
  }
}
