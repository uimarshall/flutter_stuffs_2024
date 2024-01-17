import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/search/model/club_model.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // Club List
  static List<ClubModel> club_list = [
    ClubModel(
        name: "Arsenal",
        image:
            "https://www.arsenal.com/sites/default/files/styles/player_listing_image_328/public/images/Pepe_328x328.png?itok=QZ6Q4Q4g",
        description:
            "Arsenal Football Club is a professional football club based in Islington, London, England that plays in the Premier League, the top flight of English football.",
        location: "London",
        category: "Sports",
        id: "1"),
    ClubModel(
        name: "ManUtd",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "2"),
    ClubModel(
        name: "Chelsea",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "3"),
    ClubModel(
        name: "Liverpool",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "4"),
    ClubModel(
        name: "Tottenham",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "5"),
    ClubModel(
        name: "ManCity",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "6"),
    ClubModel(
        name: "Everton",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "7"),
    ClubModel(
        name: "Leicester",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "8"),
    ClubModel(
        name: "WestHam",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "9"),
    ClubModel(
        name: "AstonVilla",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "10"),
    ClubModel(
        name: "Leeds",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "11"),
    ClubModel(
        name: "Wolves",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "12"),
    ClubModel(
        name: "Newcastle",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "13"),
    ClubModel(
        name: "CrystalPalace",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "14"),
    ClubModel(
        name: "Southampton",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "15"),
    ClubModel(
        name: "Brighton",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "16"),
    ClubModel(
        name: "Burnley",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "17"),
    ClubModel(
        name: "Fulham",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "18"),
    ClubModel(
        name: "WestBrom",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "19"),
    ClubModel(
        name: "Sheffield",
        description: "Description",
        location: "London",
        category: "Sports",
        id: "20"),
  ];

  // Creating the list to display and filtering the list.
  List<ClubModel> list_to_display = List.from(club_list);
  // This function will filter our list based on the query
  void updateList(String query) {
    // print('Search clicked');
    setState(() {
      list_to_display = club_list
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()) ||
              element.id!.contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.primary,
      appBar: AppBar(
        backgroundColor: TColors.primary,
        elevation: 0,
        title: const Text('Search'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text('Search for club',
                style: TextStyle(
                    color: TColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            TextField(
              onChanged: (value) => updateList(value),
              decoration: const InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: TColors.textSecondary),
                prefixIcon: Icon(Icons.search, color: TColors.textSecondary),
                prefixIconColor: TColors.warning,
                filled: true,
                fillColor: TColors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              // Text to display if Search result is empty or not found

              child: list_to_display.isEmpty
                  ? const Center(
                      child: Text(
                        'No result found',
                        style: TextStyle(
                            color: TColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : ListView.builder(
                      itemCount: list_to_display.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: const EdgeInsets.all(8.0),
                        title: Text(list_to_display[index].name,
                            style: const TextStyle(
                                color: TColors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text(
                          list_to_display[index].id ?? '',
                          style: const TextStyle(
                            color: TColors.textPrimary,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: TColors.textPrimary,
                        ),
                      ),
                    ),
              // : ListView.builder(
              //     itemCount: list_to_display.length,
              //     itemBuilder: (context, index) {
              //       return Card(
              //         elevation: 0,
              //         color: TColors.primary,
              //         child: ListTile(
              //           leading: CircleAvatar(
              //             backgroundImage: NetworkImage(
              //                 list_to_display[index].image.toString()),
              //           ),
              //           title: Text(
              //             list_to_display[index].name.toString(),
              //             style: const TextStyle(color: TColors.white),
              //           ),
              //           subtitle: Text(
              //             list_to_display[index].description.toString(),
              //             style: const TextStyle(color: TColors.white),
              //           ),
              //           trailing: Text(
              //             list_to_display[index].location.toString(),
              //             style: const TextStyle(color: TColors.white),
              //           ),
              //         ),
              //       );
              //     },
              //   ),
            ),
          ],
        ),
      ),
    );
  }
}
