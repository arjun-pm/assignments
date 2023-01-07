import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.camera_alt),
          backgroundColor: Colors.green[400]),

      body: ListView(
        children: [
          ListTile(
            title: const Text("My status",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            subtitle: const Text("Tap to add status updates"),
            leading: Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/DQ.jpg")),
                ),
                Positioned(
                  bottom: 0,
                  right: 1.0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                        border: Border.all(color: Colors.black87, width: 1)),
                    child: const Icon(Icons.add, color: Colors.white, size: 15),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 15,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: const Text(
                "Recent Updates",
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ),
          const ListTile(
            title: Text("RohitMan"),
            subtitle: Text("1 minutes ago"),
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/rohitn dp.jpg")),
          ),
          const ListTile(
            title: Text("Chikku Bhaii"),
            subtitle: Text("10 minutes ago"),
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/virat.jpg")),
          ),
          const ListTile(
            title: Text("Catherin"),
            subtitle: Text("20 minutes ago"),
            leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/images/michael-dam-mEZ3PoFGs_k-unsplash.jpg")),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
                width: double.infinity,
                height: 15,
                color: Colors.grey.shade300,
                child: const Text("Viewed updates",
                    style: TextStyle(color: Colors.black54))),
          ),
          const ListTile(
            title: Text("Mammookka"),
            subtitle: Text("Yesterday,12:12 AM"),
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/ikka.jpg")),
          ),
          const ListTile(
            title: Text("Lalettan"),
            subtitle: Text("Yesterday,11:20 AM"),
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/lal.jpg")),
          ),
          const ListTile(
            title: Text("Asif Ikka"),
            subtitle: Text("Yesterday,9:10 AM"),
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/asif.jpg")),
          ),
          const ListTile(
            title: Text("Millie"),
            subtitle: Text("Yesterday,7:45 AM"),
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/Millie.jpg")),
          ),
        ],
      ),
    );
  }
}
