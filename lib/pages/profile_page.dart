import 'package:flutter/material.dart';
import 'package:inharited/inherited/inherited_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    //fetch the user name from the inherited widget
    String userName = MyInheritedWidget.of(context).userName;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: Text("username: $userName"),
      ),
    );
  }
}
