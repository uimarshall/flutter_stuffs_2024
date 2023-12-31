import 'package:flutter/material.dart';

class FoodMenuList extends StatefulWidget {
  const FoodMenuList({Key? key}) : super(key: key);

  @override
  _FoodMenuListState createState() => _FoodMenuListState();
}

class _FoodMenuListState extends State<FoodMenuList> {
  List<String> foodMenu = [
    'Breakfast',
    'Lunch',
    'Dinner',
    'Dessert',
    'Drinks',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Home Page',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        backgroundColor: const Color(0xFF47B3E8),
      ),
      body: ListView(
        children: foodMenu
            .map(
              (food) => ListTile(
                title: Text(food),
                onTap: () {
                  Navigator.pushNamed(context, '/food_menu_details');
                },
              ),
            )
            .toList(),
        // toList() is used to convert the map to a list of Text widgets as children of the ListView. it turns it to an iterable list of widgets that can be used as children of the ListView.
      ),
    );
  }
}
