import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment
          .spaceEvenly, // spaceEvenly: distribute the free space evenly between the children as well as half of that space before and after the first and last child
      children: <Widget>[
        Flexible(
          fit: FlexFit.loose,
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            height: 100,
            width: 100,
            child: Text(
              'Flexible Widget',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Flexible(
          // flex: 1, // default flex value is 1
          // child: Container(), // required field
          fit: FlexFit.loose, // default flex value is FlexFit.loose
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            color: Colors.red,
            height: 100,
            width: 100,
            child: Text(
              'Flexible Widget2',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Flexible(
          flex: 3,
          fit: FlexFit.loose,
          child: Container(
            alignment: Alignment.center,
            color: Colors.green,
            height: 100,
            width: 100,
            child: Text(
              'Flexible Widget3',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
