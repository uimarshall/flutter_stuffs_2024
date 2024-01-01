import 'package:flutter/material.dart';

import 'menu_item.dart';

class MenuCardWidget extends StatelessWidget {
  // const MenuCardWidget({
  //   super.key,
  // });
  // In order to make the variable not to change in a Stateless widget, we use the final keyword

  // The MenuItem class is defined in the lib/lists/menu_item.dart file.
  //The class also has a constructor that takes in the title and reviews as named parameters and not positional parameters.
  //As a named parameter, the order of the parameters does not matter when calling the constructor after a new instance of the class is created.
  //The MenuItem class is used to create a list of menu items that will be displayed in the app using the card widget.
  final MenuItem food;
  final Function delete;

  const MenuCardWidget({super.key, required this.food, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              food.title,
              style: const TextStyle(
                fontSize: 18.0,
                color: Color(0xFF227CE3),
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              food.reviews,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 6.0),
            // Add delete button here
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                // backgroundColor: Colors.white,
                elevation: 0.0,
                alignment: Alignment.topRight,
              ),
              onPressed: () => delete(food),
              icon: const Icon(Icons.delete),
              label: const Text('Delete Menu'),
            ),
          ],
        ),
      ),
    );
  }
}
