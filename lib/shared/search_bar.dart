import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert' as convert;

class SearchBarScreen extends StatefulWidget {
  @override
  _SearchBarScreenState createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
//Step 3
  _SearchBarScreenState() {
    _filter.addListener(() {
      if (_filter.text.isEmpty) {
        setState(() {
          _searchText = "";
          filteredNames = names;
        });
      } else {
        setState(() {
          _searchText = _filter.text;
        });
      }
    });
  }

//Step 1
  final TextEditingController _filter = new TextEditingController();
  final dio = Dio(); // for http requests
  String _searchText = "";
  List names = <dynamic>[]; // names we get from API
  List filteredNames = <dynamic>[]; // names filtered by search text
  Icon _searchIcon = const Icon(Icons.search);
  Widget _appBarTitle = const Text('Search Example');

  //step 2.1
  void _getNames() async {
    final dio = Dio();
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/users');
    print(response.data);
    // Map data = convert.jsonDecode(response.body);
    List tempList = <dynamic>[];
    for (int i = 0; i < response.data.length; i++) {
      tempList.add(response.data[i]);
    }
    setState(() {
      names = tempList;
      filteredNames = names;
    });
  }

  // void getData() async {
  //   Response response =u
  //       await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  //   if (response.statusCode == 200) {
  //     Map data = convert.jsonDecode(response.body);
  //     print(data);
  //     print(data['title']);
  //   } else {
  //     print(response.statusCode);
  //   }
  // }

//Step 2.2
  void _searchPressed() {
    setState(() {
      if (_searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          controller: _filter,
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search), hintText: 'Search...'),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text('Search Example');
        filteredNames = names;
        _filter.clear();
      }
    });
  }

  //Step 4
  Widget _buildList() {
    if (!(_searchText.isEmpty)) {
      List tempList = <dynamic>[];
      for (int i = 0; i < filteredNames.length; i++) {
        if (filteredNames[i]['name']
            .toLowerCase()
            .contains(_searchText.toLowerCase())) {
          tempList.add(filteredNames[i]);
        }
      }
      filteredNames = tempList;
    }
    return ListView.builder(
      itemCount: names == null ? 0 : filteredNames.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(filteredNames[index]['name']),
          onTap: () => print(filteredNames[index]['name']),
        );
      },
    );
  }

  //STep6
  PreferredSizeWidget _buildBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: _appBarTitle,
      leading: IconButton(
        icon: _searchIcon,
        onPressed: _searchPressed,
      ),
    );
  }

  @override
  void initState() {
    _getNames();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildBar(context),
      body: Container(
        child: _buildList(),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}




















//
//void _postName() async {
//  var data = {
//    "id": 11,
//    "name": "Romeo Graham",
//    "username": "Bret",
//    "email": "Sincere@april.biz",
//    "address": {
//      "street": "Kulas Light",
//      "suite": "Apt. 556",
//      "city": "Gwenborough",
//      "zipcode": "92998-3874",
//      "geo": {"lat": "-37.3159", "lng": "81.1496"}
//    },
//    "phone": "1-770-736-8031 x56442",
//    "website": "hildegard.org",
//    "company": {
//      "name": "Romaguera-Crona",
//      "catchPhrase": "Multi-layered client-server neural-net",
//      "bs": "harness real-time e-markets"
//    }
//  };
//  final info = await dio
//      .post('https://jsonplaceholder.typicode.com/users', data: data)
//      .then((value) => debugPrint(value.toString()));
//}