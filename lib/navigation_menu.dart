import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/home/home_screen.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        // Obx is a widget that can be used to listen to changes in the state of the controller. It is similar to the Consumer widget in the Provider package. The Obx widget takes a callback that returns a widget. The callback is called whenever there is a change in the state of the controller. In our case, we want to listen to changes in the selectedIndex variable of the controller. Whenever there is a change in the selectedIndex variable, the callback is called and the widget is rebuilt. Let’s see how we can use the Obx widget in our code:
        () => NavigationBar(
            height: 60,
            elevation: 0,
            backgroundColor: darkMode ? Colors.grey[900] : Colors.white,
            indicatorColor: darkMode
                ? TColors.white.withOpacity(0.1)
                : TColors.black.withOpacity(0.1),
            selectedIndex: controller.selectedIndex
                .value, // we use .value because selectedIndex is an observable, in this case it is an RxInt of value 0 (initial value) defined in the controller class below.
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.shop),
                label: 'Shop',
              ),
              NavigationDestination(
                icon: Icon(Icons.favorite),
                label: 'Favorites',
              ),
              NavigationDestination(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ]),
      ),
      // When we click any of the navigation menu items, we want to change the body of the Scaffold. We can do this by using the IndexedStack widget. The IndexedStack widget is a widget that stacks its children and displays only one of them at a time. It is similar to the Stack widget, but the difference is that the IndexedStack widget displays only one child at a time. The IndexedStack widget is useful when you want to display a different widget based on the index of the widget. In our case, we want to display a different widget based on the index of the navigation menu item that is clicked. We can achieve this by using the IndexedStack widget. Let’s see how we can use the IndexedStack widget in our code:
      // body: IndexedStack(
      //   index: _selectedIndex,
      //   children: const [
      //     HomeScreen(),
      //     ShopScreen(),
      //     FavoritesScreen(),
      //     SettingsScreen(),
      //   ],
      // ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex =
      0.obs; // 0 is the initial index value, obs is used to make it observable

  final screens = [
    const HomeScreen(),
    const Center(child: Text('Shop')),
    const Center(child: Text('Favorites')),
    const Center(child: Text('Settings')),
  ];
}
// class NavigationController extends ChangeNotifier {
//   int _selectedIndex = 0;

//   int get selectedIndex => _selectedIndex;

//   void setIndex(int index) {
//     _selectedIndex = index;
//     notifyListeners();
//   }
// }