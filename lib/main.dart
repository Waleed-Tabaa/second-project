import 'package:flutter/material.dart';
import 'package:secondproject/add.dart';
import 'package:secondproject/auth/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
            // theme: ThemeData.dark(),
            debugShowCheckedModeBanner: false,
            home: const Login(),
            routes: {
          "Login": (context) => const Login(),
          "Add": (context) => const Add()
        }));
  }
}
