import 'package:flutter/material.dart';

class MySafeArea extends StatelessWidget {
  const MySafeArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SafeArea Example'),
      ),
      body: SafeArea(
        // Specify which dimensions you want to apply the SafeArea widget to
        left:
            false, // don't apply the SafeArea widget to the left side of the screen
        top: true,
        right: true,
        bottom: true,
        minimum: const EdgeInsets.all(16.0),
        maintainBottomViewPadding: true,

        child: ListView(
          children: [
            Column(
              children: List.generate(
                  6, (index) => Text('This is SafeArea text at index: $index')),
            ),
          ],
        ),
      ),
    );
  }
}
