import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // If you don't put the container in the scaffold, it will take the full screen of the device.
        body: Container(
      color: Colors.blue,

      // constraints: const BoxConstraints.expand(
      //   height: 100.0,
      //   width: 200.0,
      // ),
      // width: 200.0,
      // height: 100.0,
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      margin: const EdgeInsets.all(20.0),
      // decoration: const BoxDecoration(
      //   color: Colors.amber,
      //   shape: BoxShape.circle,
      // ),

      // alignment: Alignment.center,
      transform: Matrix4.rotationZ(0.1),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          Text('Hello World!'),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ],
      ),
    ));
  }
}
