import 'package:flutter/material.dart';

class ResponsiveDesign extends StatelessWidget {
  const ResponsiveDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height *
                0.5, // Fix: Added closing parenthesis and defined the 'height' property
            color: Colors.blue,
            child: Center(
              child: Text(
                'Responsive Design, i cover 100% of the screen width and 50% of the screen height',
                // style: TextStyle(fontSize: 50, color: Colors.white,)
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            color: Colors.green,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12.0),
                foregroundColor: Colors.white,
                backgroundColor: Colors.green.shade50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text(
                "I'm a Responsive Button Design",
                // style: TextStyle(fontSize: 50, color: Colors.white,)
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
