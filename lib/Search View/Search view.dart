import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> foodList = [
    'Orange',
    'Berries',
    'Lemons',
    'Apples',
    'Mangoes',
    'Dates',
    'Avocados',
    'Black Beans',
    'Chickpeas',
    'Pinto beans',
    'White Beans',
    'Green lentils',
  ];
  List<String> foodListSearch = [];
  TextEditingController? _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue.shade300,
            title: Container(
              decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                    hintText: 'Search here', contentPadding: EdgeInsets.all(8)),
                onChanged: (value) {
                  setState(() {
                    foodListSearch = foodList
                        .where((element) =>
                        element.toLowerCase().contains(value.toLowerCase()))
                        .toList();
                  });
                },
              ),
            )),
        body: _textEditingController!.text.isNotEmpty &&
            foodListSearch.length == 0
            ? const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'No results found,\nPlease try different keyword',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),
        )
            : ListView.builder(
            itemCount: _textEditingController!.text.isEmpty
                ? foodList.length
                : foodListSearch.length,
            itemBuilder: (ctx, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      child: Icon(Icons.food_bank),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(_textEditingController!.text.isEmpty
                        ? foodList[index]
                        : foodListSearch[index]),
                  ],
                ),
              );
            }));
  }
}
