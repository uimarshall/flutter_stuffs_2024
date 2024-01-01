import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/lists/menu_item.dart';
import 'package:flutter_stuffs_2024/lists/menu_list_card.dart';

class FoodMenuList extends StatefulWidget {
  const FoodMenuList({Key? key}) : super(key: key);

  @override
  _FoodMenuListState createState() => _FoodMenuListState();
}

class _FoodMenuListState extends State<FoodMenuList> {
  List<MenuItem> foodMenu = [
    MenuItem(title: 'Rice', reviews: 'Tastes good'),
    MenuItem(title: 'Chicken', reviews: 'A great meals for all'),
    MenuItem(title: 'Burger', reviews: 'Tasty, i like it'),
    MenuItem(title: 'Snacks', reviews: 'Sumptuous tasty meals'),
    MenuItem(title: 'Dessert', reviews: 'Nice delicacies'),
    MenuItem(title: 'Drinks', reviews: 'Great Tastes good'),
    MenuItem(title: 'Beans', reviews: 'Great Tastes from africa'),
  ];

  // Create delete function
  void delete(MenuItem menu) {
    setState(() {
      foodMenu.remove(menu);
    });
  }

// Create a function to output lists, after cycling through the list of items

  Widget menuListTemplate(food) {
    return MenuCardWidget(food: food, delete: delete);
  }

  Widget menuList(menu) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: <Widget>[
              Text(
                menu.title,
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 6.0),
              Text(
                menu.reviews,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
            ],
          )),
    );
  }

  Widget menuList2(menu) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                menu.title,
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 77, 62, 62),
                ),
              ),
              const SizedBox(height: 6.0),
              Text(
                menu.reviews,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ],
          )),
    );
  }

  Widget menuList3(menu) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text(menu.title),
                  subtitle: Text(menu.reviews),
                  onTap: () {
                    Navigator.pushNamed(context, '/food_menu_details');
                  },
                ),
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Menu List',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        backgroundColor: const Color(0xFF47B3E8),
      ),
      body: ListView(
        children: foodMenu.map((food) => menuListTemplate(food)).toList(),
        // toList() is used to convert the map to a list of Text widgets as children of the ListView. it turns it to an iterable list of widgets that can be used as children of the ListView.
      ),
    );
  }
}
