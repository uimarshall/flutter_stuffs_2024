import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        backgroundColor: Colors.blueGrey[900],
        iconTheme: const IconThemeData(color: Colors.green),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
            iconSize: 30.0,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
            iconSize: 30.0,
          ),
        ],
      ),
      drawer: Drawer(
        // backgroundColor: Colors.white,
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Flutter'),
              accountEmail: Text(
                  ' flutter@gmail.com '), // TRY THIS: Add a space before  and after 'flutter' to see what happens.  Why do you think this happens?  How would you fix it? I think it is because the text is not centered  and the space is not accounted for. I would fix it by adding a space before and after the text.
              decoration: BoxDecoration(
                color: Color(0xFF0B9DE6),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: FlutterLogo(
                  size: 42.0,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () {},
            ),
            const Divider(
              color: Colors.black,
              height: 0.5,
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help'),
              onTap: () {},
            ),

            const Divider(
              color: Colors.black,
              height: 0.5,
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              iconColor: Colors.red,
              onTap: () {},
            ),

            // TRY THIS: Add a divider between the two ListTiles above and below.
            // You can use the Divider widget, or you can add a Container with a divider above or below it.
            ListTile(
              trailing: const Icon(Icons.close),
              title: const Text('Close'),
              iconColor: Colors.red,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Image.asset('assets/images/background-3.jpeg'),

        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Text(
        //       'You have pushed the button this many times:',
        //     ),
        //     Text(
        //       'Second column',
        //       style: TextStyle(
        //         fontSize: 30.0,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ],
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
      ]),
      backgroundColor: Colors.grey[350],
    );
  }
}
