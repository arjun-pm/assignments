import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileUi(),
  ));
}

class ProfileUi extends StatefulWidget {
  const ProfileUi({Key? key}) : super(key: key);

  @override
  State<ProfileUi> createState() => _ProfileUiState();
}

class _ProfileUiState extends State<ProfileUi> {
  var text = [
    "Privacy",
    "Purchase history",
    "Help",
    "Settings",
    "Invite a friend",
    "Logout",
  ];

  var icon = [
    Icons.privacy_tip,
    Icons.history,
    Icons.help,
    Icons.settings_outlined,
    Icons.person_add_alt_1,
    Icons.logout_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          size: 30,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.menu_outlined,
            size: 30,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 15),
                  height: 180,
                  width: 180,
                  child: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/Profile ui 2 image.webp"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.facebook,
                      color: Colors.blue,
                      size: 40,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/svg/twitter.svg")),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/svg/linkedin.svg")),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/svg/instagram.svg")),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Thomas Shelby",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "@webrror",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Mobile App Developer",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Flexible(
              child: ListChild(
                text: text,
                icon: icon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListChild extends StatelessWidget {
  List<String> text;
  List<IconData> icon;

  ListChild({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: text.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Padding(
          padding:
              const EdgeInsets.only(left: 25.0, right: 25.0, top: 5, bottom: 5),
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300]),
            child: ListTile(
              dense: true,
              title: Text(
                text[index],
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.normal),
              ),
              leading: Icon(icon[index]),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black87,
              ),
            ),
          ),
        );
      },
    );
  }
}
