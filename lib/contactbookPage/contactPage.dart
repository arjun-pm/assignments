import 'package:flutter/material.dart';

class ContactBookPage extends StatefulWidget {
  const ContactBookPage({Key? key}) : super(key: key);

  @override
  State<ContactBookPage> createState() => _ContactBookPageState();
}

class _ContactBookPageState extends State<ContactBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CONTACTS")),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
            Icons.add,
        ),
        onPressed: () {

        },
      ),
      body: ListView(
        children: [
          cardWidget("Arjun", "9999999999"),
          cardWidget("Anju", "9555555559"),
          cardWidget("Sabu", "9999999999"),
          cardWidget("Ajith", "9555555559"),
          cardWidget("Mittu", "9999999999"),
          cardWidget("Vishnu", "9555555559"),
        ],
      ),
    );
  }
}

Widget cardWidget(String name, String number) {
  return Card(
    elevation: 2,
    color: Colors.white,
    shadowColor: Colors.black,
    child: ListTile(
      title: Text(name),
      subtitle: Text(number),
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade300,
        ),
        child: const Icon(Icons.person),
      ),
      trailing: Wrap(
        children: const [
          Icon(Icons.message),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.phone),
        ],
      ),
    ),
  );
}
