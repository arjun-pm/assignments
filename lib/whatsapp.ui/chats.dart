import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsApp_Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message),
          backgroundColor: Colors.green[400]),
      body: ListView(
        children: const [
          ListTile(
              title: Text("Chikku Bhaii"),
              subtitle: Text("Evdaa uvve..?"),
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/virat.jpg")),
              trailing: Text("11:48 AM")),
          ListTile(
              title: Text("RohitMan"),
              subtitle: Text("Okay Aliya.."),
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/rohitn dp.jpg")),
              trailing: Text("10:00 AM")),
          ListTile(
              title: Text("Christopher"),
              subtitle: Text("Sherii daa"),
              leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/Profile ui 2 image.webp")),
              trailing: Text("9:29 AM")),
          ListTile(
            title: Text("Catherin"),
            subtitle: Text("Bye daa"),
            leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/images/michael-dam-mEZ3PoFGs_k-unsplash.jpg")),
            trailing: Text("Yesterday"),
          ),
          ListTile(
              title: Text("Thomas Shelby"),
              subtitle: Text("Nee shooper ahhda"),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://netflixjunkie.com/wp-content/uploads/2022/06/tommy-shelby-cillian-murphy-peaky-blinders-1569234705-1140x599.jpg")),
              trailing: Text("Yesterday")),

          ListTile(
              title: Text("Milliee"),
              subtitle: Text("Hai"),
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Millie.jpg")),
              trailing: Text("Yesterday")),
          ListTile(
              title: Text("Lalettan"),
              subtitle: Text("vaigeet enthaa ppdy"),
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/lal.jpg")),
              trailing: Text("Yesterday")),

          ListTile(
              title: Text("Mammookka"),
              subtitle: Text("ahh mone ok"),
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/ikka.jpg")),
              trailing: Text("Yesterday")),
          ListTile(
              title: Text("DQ"),
              subtitle: Text("see u soon"),
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/DQ.jpg")),
              trailing: Text("Yesterday")),
          ListTile(
              title: Text("Asif ikka"),
              subtitle: Text("Nammk kaanaada"),
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/asif.jpg")),
              trailing: Text("Yesterday")),
        ],
      ),
    );
  }
}
