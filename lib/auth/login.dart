import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:secondproject/auth/homepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/bfc54166275a431685dd8bffbdb97b43.jpg"),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black, BlendMode.lighten))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///////////////////////For Text///////////////////////////
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                width: 150,
                height: 150,
              ),
              Container(
                margin: EdgeInsets.all(30),
                child: TextFormField(
                  cursorColor: Colors.red,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: Colors.red)),
                      labelText: "User Name",
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 4)),
                ),
              ),

              Container(
                margin: EdgeInsets.all(30),
                child: TextFormField(
                  cursorColor: Colors.red,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: Colors.red)),
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 4)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('Remember me'),
                      const Text(
                        "   |",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Forgot Password'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: FaIcon(
                        color: Colors.blue[300],
                        size: 35,
                        FontAwesomeIcons.facebook),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(
                      size: 35,
                      FontAwesomeIcons.instagram,
                      color: Colors.pinkAccent[200],
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(
                        size: 30,
                        color: Colors.orange,
                        FontAwesomeIcons.google),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(
                      size: 35,
                      FontAwesomeIcons.twitter,
                      color: Colors.blue[600],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Container(
                width: 60,
                height: 35,
                color: Colors.white,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Homepage()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
