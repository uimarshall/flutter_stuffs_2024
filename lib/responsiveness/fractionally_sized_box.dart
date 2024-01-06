import 'package:flutter/material.dart';

class MyFractionallySizedBox extends StatelessWidget {
  const MyFractionallySizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Use alignment to position the child widget within the parent widget (position the button in the center of the screen)
      alignment: Alignment.center,
      color: Colors.blue,
      child: FractionallySizedBox(
        widthFactor: 0.7, //takes 70% of the parent's container
        heightFactor: 0.1,
        child:
            ElevatedButton(onPressed: () {}, child: const Text('Login Button')),
      ),
    );
  }
}
