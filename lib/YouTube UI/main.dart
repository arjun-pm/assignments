import 'package:assignments/YouTube%20UI/Add.dart';
import 'package:assignments/YouTube%20UI/Home.dart';
import 'package:assignments/YouTube%20UI/library.dart';
import 'package:assignments/YouTube%20UI/shorts.dart';
import 'package:assignments/YouTube%20UI/subscriptions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: UtubeHomepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class UtubeHomepage extends StatefulWidget {
  const UtubeHomepage({Key? key}) : super(key: key);

  @override
  State<UtubeHomepage> createState() => _UtubeHomepageState();
}

class _UtubeHomepageState extends State<UtubeHomepage> {
  List screens = [
    const Homeui(),
    const Shorts(),
    const Addpage(),
    const Subscribtion(),
    const LibraryPage(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
          color: Colors.white,
        ),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (tapindex) {
          setState(
            () {
              index = tapindex;
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_business_outlined,
              ),
              label: "Shorts"),
          BottomNavigationBarItem(
              icon: Icon(
                size: 35,
                Icons.add_alarm_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.subscriptions_outlined,
              ),
              label: "Subscription"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.library_add_outlined,
              ),
              label: 'Library')
        ],
      ),
      body: screens[index],
    );
  }
}
