import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Nav_Drawer(),
  ));
}

class Nav_Drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Drawer")),
        drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.orange),
          child: Drawer(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.red, Colors.orange])),
              child: ListView(
                children: [
                  const ListTile(
                    leading: CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage("assets/images/currentimage.jpg")),
                    title: Text("Terra Crowell",
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    subtitle: Text("Administrator",
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                    trailing: Icon(Icons.close, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Custom_Row(
                      icons: Icons.dashboard_outlined, names: "Dashboard"),
                  const SizedBox(
                    height: 20,
                  ),
                  Custom_Row(icons: Icons.leaderboard_outlined, names: "Leads"),
                  const SizedBox(
                    height: 20,
                  ),
                  Custom_Row(icons: Icons.groups_outlined, names: "Clients"),
                  const SizedBox(
                    height: 20,
                  ),
                  Custom_Row(icons: Icons.rocket_outlined, names: "Projects"),
                  const SizedBox(
                    height: 20,
                  ),
                  Custom_Row(
                      icons: Icons.handshake_outlined, names: "Partners"),
                  const SizedBox(
                    height: 20,
                  ),
                  Custom_Row(
                      icons: Icons.subscriptions_outlined,
                      names: "Subscription"),
                  const SizedBox(
                    height: 20,
                  ),
                  Custom_Row(icons: Icons.payments_outlined, names: "Payments"),
                  const SizedBox(
                    height: 20,
                  ),
                  Custom_Row(
                      icons: Icons.supervised_user_circle_outlined,
                      names: "Users"),
                  const SizedBox(
                    height: 20,
                  ),
                  Custom_Row(
                      icons: Icons.library_add_outlined, names: "Library"),
                  const SizedBox(
                    height:  120,
                  ),
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Logout"),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrangeAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13))),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ));
  }
}

class Custom_Row extends StatelessWidget {
  final IconData icons;
  final String names;

  Custom_Row({required this.icons, required this.names});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 30,
        ),
        Icon(icons, color: Colors.white),
        const SizedBox(
          width: 40,
        ),
        Text(
          names,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
