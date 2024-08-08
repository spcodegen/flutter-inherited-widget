import 'package:flutter/material.dart';
import 'package:inharited/inherited/state_controller.dart';
import 'package:inharited/models/user_model.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final User user = StateController.of(context).user;
    return Scaffold(
      appBar: AppBar(
        title: Text("User Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "User name is , ${user.name} and email is ${user.email} and the password is ${user.password}",
            )
          ],
        ),
      ),
    );
  }
}
