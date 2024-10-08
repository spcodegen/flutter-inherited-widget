import 'package:flutter/material.dart';
import 'package:inharited/inherited/inherited_widget.dart';
import 'package:inharited/inherited/state_controller.dart';
import 'package:inharited/models/user_model.dart';
import 'package:inharited/pages/home_page.dart';
import 'package:inharited/pages/new_home_page.dart';

void main() {
  runApp(StateController(
    user: User(
      name: "name",
      email: "email",
      password: "password",
    ),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      userName: "S.S Dissanayake",
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: NewHomePage(),
      ),
    );
  }
}
