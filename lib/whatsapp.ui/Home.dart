import 'package:flutter/material.dart';

import 'Calls.dart';
import 'Status.dart';
import 'chats.dart';

void main() {
  runApp(MaterialApp(
    home: MyTab(),
    // theme:ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF43A047))),
    debugShowCheckedModeBanner: false,
  ));
}

class MyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[700],
            title: const Text("WhatsApp"),
            actions: [
              const Icon(Icons.camera_alt_outlined),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.search),
              PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(child: Text("New group")),
                    const PopupMenuItem(child: Text("New broadcast")),
                    const PopupMenuItem(child: Text("Linked device")),
                    const PopupMenuItem(child: Text("Starred messages")),
                    const PopupMenuItem(child: Text("Payments")),
                    const PopupMenuItem(child: Text("Settings"))
                  ];
                },
              )
            ],
            bottom: TabBar(
              labelPadding: EdgeInsets.zero,
              isScrollable: true,

              tabs: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * .1,
                    child: const Tab(
                        icon: Icon(
                          Icons.people,
                          size: 20,
                        ))),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: const Tab(
                      text: "Chats",
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: const Tab(
                      text: "Status ",
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: const Tab(
                      text: "Call",
                    )),

              ],
            ),
          ),
          body:  TabBarView(
            children: [
              const Center(
                child: Text('Community'),
              ),
              WhatsApp_Chats(),
              const Status(),
              const Calls(),

            ],
          ),
        ));
  }
}
