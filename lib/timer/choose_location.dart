import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
// the initState life cycle method is called when the widget is created for the first time
  void initState() {
    super.initState();
    print('Init state runs once the widget is created');
  }

  @override
  Widget build(BuildContext context) {
    print('Build state runs every time the widget is created');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF9FD0F6),
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
