import 'package:flutter/material.dart';
import 'AdminPage.dart';
import 'HomePage.dart';
import 'Login and SingupPage.dart';
import 'SignupPage.dart';
import 'SqfHelperPage.dart';
void main() {
  runApp(MaterialApp(
    home: Login_Form(),
    debugShowCheckedModeBanner: false,
  ));
}
class Login_Form extends StatefulWidget {
  @override
  State<Login_Form> createState() => _Login_FormState();
}

class _Login_FormState extends State<Login_Form> {
  var formkey = GlobalKey<FormState>();
  final TextEditingController conemail = TextEditingController();
  final TextEditingController conpass = TextEditingController();

  void logincheck(String email, String password) async {
    if (email == 'jishnu@gmail.com' && password == '123456') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AdminHome()));
    } else {
      var data = await SQLHelper.CheckLogin(email, password);
      if (data.isNotEmpty) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => Home(
                  data: data,
                )));
        print('Login Success');
      } else if (data.isEmpty) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Login_Signup()));
        print('Login failed');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    bool hidepass = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN PAGE"),
      ),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Login Page",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: conemail,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.drive_file_rename_outline),
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                validator: (text) {
                  if (text!.isEmpty ||
                      !text.contains('@') ||
                      !text.contains(".")) {
                    return "Enter valid Email!!!";
                  }
                },
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: conpass,
                  obscureText: hidepass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (hidepass)
                            hidepass = false;
                          else
                            hidepass = true;
                        });
                      },
                      icon: Icon(
                          hidepass ? Icons.visibility : Icons.visibility_off),
                    ),
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (pass) {
                    if (pass!.isEmpty || pass.length < 6) {
                      return "Password length should be greater than 6";
                    }
                  },
                  textInputAction: TextInputAction.next,
                )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                color: Colors.pink,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  final valid = formkey.currentState!.validate();

                  if (valid) {
                    logincheck(conemail.text, conpass.text);
                  } else {}
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home(data:null)));
                },
                child: Text("LOGIN"),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup_Form()));
                },
                child: Text('Not a User? Register Here!!!'))
          ],
        ),
      ),
    );
  }
}