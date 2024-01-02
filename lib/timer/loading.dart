import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert' as convert;

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  getData() async {
    Response response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    if (response.statusCode == 200) {
      Map data = convert.jsonDecode(response.body);
      print(data);
      print(data['title']);
    } else {
      print(response.statusCode);
    }
  }

  @override
// the initState life cycle method is called when the widget is created for the first time
  void initState() {
    super.initState();
    print('Init state runs once the widget is created');
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Loading Page'),
    );
  }
}
