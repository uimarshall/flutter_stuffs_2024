import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

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
        body: const Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/coding-1.jpg'),
                    radius: 40.0,
                  ),
                ),
                Divider(
                  height: 60.0,
                  color: Colors.white,
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                      color: Colors.white, letterSpacing: 2.0, fontSize: 16.0),
                ),
                // Put vertical space between the name and the text below it.
                SizedBox(height: 10.0),
                Text(
                  'Marshall',
                  style: TextStyle(
                    color: Colors.black87,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                  ),
                ),
                SizedBox(height: 40.0),
                Text(
                  'CURRENT PROGRAMMING LEVEL',
                  style: TextStyle(
                      color: Colors.white, letterSpacing: 2.0, fontSize: 16.0),
                ),
                // Put vertical space between the name and the text below it.
                SizedBox(height: 10.0),
                Text(
                  '5',
                  style: TextStyle(
                    color: Colors.black87,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                  ),
                ),
                SizedBox(height: 40.0),
                Row(
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
