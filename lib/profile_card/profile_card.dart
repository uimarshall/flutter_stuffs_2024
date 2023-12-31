import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({Key? key}) : super(key: key);
// The createState() function returns an instance (_ProfileCardState()) of the state object created below
  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
// Definition of state which can state over time
  int programmingLevel = 0;
  // String name = "Marshall";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
          title: const Text('My Profile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
          iconTheme: const IconThemeData(color: Colors.green),
          elevation: 0.0, // this removes the shadow below the app bar
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              programmingLevel += 1;
            });
          },
          tooltip: 'Increment',
          backgroundColor: Colors.blueGrey[500],
          child: const Icon(Icons.add),
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/coding-1.jpg'),
                    radius: 40.0,
                  ),
                ),
                const Divider(
                  height: 60.0,
                  color: Colors.white,
                ),
                const Text(
                  'NAME',
                  style: TextStyle(
                      color: Colors.white, letterSpacing: 2.0, fontSize: 16.0),
                ),
                // Put vertical space between the name and the text below it.
                const SizedBox(height: 10.0),
                const Text(
                  'Marshall',
                  style: TextStyle(
                    color: Colors.black87,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                  ),
                ),
                const SizedBox(height: 40.0),
                const Text(
                  'CURRENT PROGRAMMING LEVEL',
                  style: TextStyle(
                      color: Colors.white, letterSpacing: 2.0, fontSize: 16.0),
                ),
                // Put vertical space between the name and the text below it.
                const SizedBox(height: 10.0),
                Text(
                  '$programmingLevel',
                  style: const TextStyle(
                    color: Colors.black87,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                  ),
                ),
                const SizedBox(height: 40.0),
                const Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'email@gmail.com',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
