import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MaterialApp(
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.white,
            child: CircleAvatar(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: const Image(
                  image: AssetImage("assets/images/airplane.jpg"),
                ),
              ),
            ),
          ),
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text("Login"),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "-or-",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Row(
                  children: [const SizedBox(width: 10),
                    const Text("Login with Instagram"),const SizedBox(width: 120), IconButton(
                        onPressed: () {},color: Colors.red,
                        icon: SvgPicture.asset("assets/svg/instagram.svg")),
                  ],
                )),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Row(
                  children: [const SizedBox(width: 10),
                    const Text("Login with Twitter"),const SizedBox(width: 140), IconButton(
                        onPressed: () {},color: Colors.red,
                        icon: SvgPicture.asset("assets/svg/twitter.svg")),
                  ],
                )),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Row(
                  children: [const SizedBox(width: 10),
                    const Text("Login with Google"),const SizedBox(width: 140), IconButton(
                        onPressed: () {},color: Colors.red,
                        icon: SvgPicture.asset("assets/svg/icons8-google.svg")),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
