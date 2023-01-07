import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add_call),
          backgroundColor: Colors.green[400]),
      body: ListView(
        children: [
          ListTile(
            title: const Text("DQ"),
            subtitle: Row(children: const [
              Icon(Icons.call_made, size: 16, color: Colors.green),
              Text("Yesterday,10:20 AM")
            ]),
            leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/DQ.jpg")),
            trailing: const Icon(Icons.phone, color: Colors.green),
          ),
          ListTile(
            title: const Text("Asif Ikka"),
            subtitle: Row(children: const [
              Icon(Icons.call_made, size: 16, color: Colors.green),
              Text("Yesterday,9:00 AM")
            ]),
            leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/asif.jpg")),
            trailing: const Icon(Icons.phone, color: Colors.green),
          ),
          ListTile(
            title: const Text("Thomas Shelby"),
            subtitle: Row(children: const [
              Icon(Icons.call_received, size: 16, color: Colors.green),
              Text("March 24,11:39 PM")
            ]),
            leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://netflixjunkie.com/wp-content/uploads/2022/06/tommy-shelby-cillian-murphy-peaky-blinders-1569234705-1140x599.jpg")),
            trailing: const Icon(Icons.phone, color: Colors.green),
          ),
          ListTile(
            title: const Text("Miliiee"),
            subtitle: Row(children: const [
              Icon(Icons.call_received, size: 16, color: Colors.red),
              Text("March 23,12:25 PM")
            ]),
            leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/Millie.jpg")),
            trailing: const Icon(Icons.phone, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
