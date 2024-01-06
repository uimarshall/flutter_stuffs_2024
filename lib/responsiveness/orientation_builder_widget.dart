import 'package:flutter/material.dart';

class MyOrientationDemo extends StatelessWidget {
  const MyOrientationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrientationBuilder Example'),
      ),
      body: Center(
        child: OrientationBuilder(
          builder: (context, orientation) {
            // Build UI elements based on device orientation
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  // Display different icons based on orientation
                  orientation == Orientation.portrait
                      ? Icons.phone_android
                      : Icons.phone_iphone,
                  size: 100.0,
                ),
                const SizedBox(height: 20.0),
                Text(
                  // Display different text based on orientation
                  'Device is in ${orientation == Orientation.portrait ? 'Portrait' : 'Landscape'} mode',
                  style: const TextStyle(fontSize: 20.0),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class OrientationPortraitLandScape extends StatelessWidget {
  const OrientationPortraitLandScape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrientationBuilder Example'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          // Build UI elements based on device orientation
          return orientation == Orientation.portrait
              ? _buildVerticalLayout()
              : _buildHorizontalLayout();
        },
      ),
    );
  }

  _buildVerticalLayout() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          // Display different icons based on orientation
          Icons.phone_android,
          size: 100.0,
        ),
        SizedBox(height: 20.0),
        Center(
          child: Text(
            // Display different text based on orientation
            'Device is in Portrait view',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue),
          ),
        ),
      ],
    );
  }

  _buildHorizontalLayout() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          // Display different icons based on orientation
          Icons.phone_iphone,
          size: 100.0,
        ),
        SizedBox(width: 20.0),
        Center(
          child: Text(
            // Display different text based on orientation
            'Device is in Landscape view',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(66, 245, 215, 1)),
          ),
        ),
      ],
    );
  }
}
