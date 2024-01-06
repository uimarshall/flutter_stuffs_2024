import 'package:flutter/material.dart';

class MyExpandedWidget extends StatelessWidget {
  const MyExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // ColumnExpanded(),
        ExpandedMiddleCol(),
        // ExpandedRow(),
        // ExpandedRowEqualWidth(),
      ],
    );
  }
}

// Expanded with flex values

class ColumnExpanded extends StatelessWidget {
  const ColumnExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        flex: 1,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.blue,
          child: Text(
            'Expanded Widget',
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.green,
          child: Text(
            'Expanded Widget',
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
          child: Text(
            'Expanded Widget',
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]);
  }
}

// Expanded with width and height values

class ExpandedMiddleCol extends StatelessWidget {
  const ExpandedMiddleCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
            child: Text(
              'Container Widget not expanded',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              width: 100,
              child: Text(
                'Expanded container',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
            child: Text(
              'Container Widget not expanded2',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

// Expanded Example with Row

class ExpandedRow extends StatelessWidget {
  const ExpandedRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber,
              height: 100,
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 50,
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}

// Expanded with equal width in a row with 3 children

class ExpandedRowEqualWidth extends StatelessWidget {
  const ExpandedRowEqualWidth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.amber,
                height: 100,
                width: 100,
                child: Text(
                  'Expanded Widget',
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 100,
                child: Text(
                  'Expanded Widget2',
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                height: 100,
                width: 100,
                child: Text(
                  'Expanded Widget3',
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
