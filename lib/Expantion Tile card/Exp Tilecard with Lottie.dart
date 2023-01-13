import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MaterialApp(
    home: ExpansionEx(),
    debugShowCheckedModeBanner: false,
  ));
}

class ExpansionEx extends StatefulWidget {
  const ExpansionEx({Key? key}) : super(key: key);

  @override
  State<ExpansionEx> createState() => _ExpansionExState();
}

class _ExpansionExState extends State<ExpansionEx> {
  var CardA = GlobalKey<ExpansionTileCardState>();
  var CardB = GlobalKey<ExpansionTileCardState>();
  var CardC = GlobalKey<ExpansionTileCardState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Center(
          child: Text("EXPERIENCE",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Lottie.network(
                        fit: BoxFit.fill,
                        "https://assets3.lottiefiles.com/packages/lf20_IyUAYN78qV.json"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 80),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Colors.white,
                    colorScheme: const ColorScheme.light(primary: Colors.white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: ExpansionTileCard(
                      baseColor: Colors.transparent,
                      expandedColor: Colors.deepPurple,
                      key: CardA,
                      title: const Text("Flutter Internship",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),
                      subtitle: const Text(
                        "6 months",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Course fee : 25000",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Row(
                                    children: [
                                      ButtonBar(
                                        alignment:
                                            MainAxisAlignment.spaceAround,
                                        buttonHeight: 52.0,
                                        buttonMinWidth: 90.0,
                                        children: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              CardA.currentState?.expand();
                                            },
                                            child: Column(
                                              children: const <Widget>[
                                                Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.blue,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2.0),
                                                ),
                                                Text(
                                                  'Open',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 40),
                                          TextButton(
                                            onPressed: () {
                                              CardA.currentState?.collapse();
                                            },
                                            child: Column(
                                              children: const <Widget>[
                                                Icon(
                                                  Icons.arrow_upward,
                                                  color: Colors.blue,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2.0),
                                                ),
                                                Text(
                                                  'Close',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 30),
                                          TextButton(
                                            onPressed: () {
                                              CardA.currentState
                                                  ?.toggleExpansion();
                                            },
                                            child: Column(
                                              children: const <Widget>[
                                                Icon(
                                                  Icons.swap_vert,
                                                  color: Colors.blue,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2.0),
                                                ),
                                                Text(
                                                  'Toggle',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Lottie.network(
                        fit: BoxFit.fill,
                        "https://assets3.lottiefiles.com/packages/lf20_f24znioj.json"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, top: 80),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Colors.white,
                    colorScheme: const ColorScheme.light(primary: Colors.white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: ExpansionTileCard(
                      baseColor: Colors.transparent,
                      expandedColor: Colors.deepPurple,
                      key: CardB,
                      title: const Text("Android Training",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),
                      subtitle: const Text(
                        "2 months",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Course fee : 2500",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Row(
                                    children: [
                                      ButtonBar(
                                        alignment:
                                            MainAxisAlignment.spaceAround,
                                        buttonHeight: 52.0,
                                        buttonMinWidth: 90.0,
                                        children: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              CardB.currentState?.expand();
                                            },
                                            child: Column(
                                              children: const <Widget>[
                                                Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.blue,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2.0),
                                                ),
                                                Text(
                                                  'Open',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 40),
                                          TextButton(
                                            onPressed: () {
                                              CardB.currentState?.collapse();
                                            },
                                            child: Column(
                                              children: const <Widget>[
                                                Icon(
                                                  Icons.arrow_upward,
                                                  color: Colors.blue,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2.0),
                                                ),
                                                Text(
                                                  'Close',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 35),
                                          TextButton(
                                            onPressed: () {
                                              CardB.currentState
                                                  ?.toggleExpansion();
                                            },
                                            child: Column(
                                              children: const <Widget>[
                                                Icon(
                                                  Icons.swap_vert,
                                                  color: Colors.blue,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2.0),
                                                ),
                                                Text(
                                                  'Toggle',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Lottie.network(
                        fit: BoxFit.fill,
                        "https://assets3.lottiefiles.com/packages/lf20_tW4Z16.json"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 80),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: ExpansionTileCard(
                      baseColor: Colors.transparent,
                      expandedColor: Colors.deepPurple,
                      key: CardC,
                      title: const Text("Java Training",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),
                      subtitle: const Text(
                        "2 months",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Course fee : 2500",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Row(
                                    children: [
                                      ButtonBar(
                                        alignment:
                                            MainAxisAlignment.spaceAround,
                                        buttonHeight: 52.0,
                                        buttonMinWidth: 90.0,
                                        children: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              CardC.currentState?.expand();
                                            },
                                            child: Column(
                                              children: const <Widget>[
                                                Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.blue,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2.0),
                                                ),
                                                Text(
                                                  'Open',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 40),
                                          TextButton(
                                            onPressed: () {
                                              CardC.currentState?.collapse();
                                            },
                                            child: Column(
                                              children: const <Widget>[
                                                Icon(
                                                  Icons.arrow_upward,
                                                  color: Colors.blue,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2.0),
                                                ),
                                                Text(
                                                  'Close',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 30),
                                          TextButton(
                                            onPressed: () {
                                              CardC.currentState
                                                  ?.toggleExpansion();
                                            },
                                            child: Column(
                                              children: const <Widget>[
                                                Icon(
                                                  Icons.swap_vert,
                                                  color: Colors.blue,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2.0),
                                                ),
                                                Text(
                                                  'Toggle',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
