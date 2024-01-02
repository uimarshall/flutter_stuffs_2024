import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  getData() async {
    // simulate a network request to fetch the location data
    // Future is like Promises in JavaScript and it is used to handle asynchronous operations in Dart

    // Other functions should await this to be completed before they are called
    String location = await Future.delayed(const Duration(seconds: 5), () {
      // ignore: avoid_print
      return 'London';
    }); // Future.delayed is a method that takes in a Duration and a function as parameters

// This should be called after the request for location data has been completed.
    String message = await Future.delayed(const Duration(seconds: 3), () {
      return 'You are Welcome to $location';
    });
    print(message);
  }

  @override
// the initState life cycle method is called when the widget is created for the first time
  void initState() {
    super.initState();
    print('Init state runs once the widget is created');
    getData();
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
