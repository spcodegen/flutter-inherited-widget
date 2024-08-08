import 'package:flutter/material.dart';
import 'package:inharited/inherited/state_controller.dart';

class AddNewUser extends StatefulWidget {
  const AddNewUser({super.key});

  @override
  State<AddNewUser> createState() => _AddNewUserState();
}

class _AddNewUserState extends State<AddNewUser> {
  String userName = "";
  String userEmail = "";
  String userPassword = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add User"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Name"),
              onChanged: (value) {
                setState(() {
                  userName = value;
                });
              },
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(labelText: "Email"),
              onChanged: (value) {
                setState(() {
                  userEmail = value;
                });
              },
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(labelText: "Password"),
              onChanged: (value) {
                setState(() {
                  userPassword = value;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                StateController.of(context).updateUser(
                  name: userName,
                  email: userEmail,
                  password: userPassword,
                );
                Navigator.pop(context);
              },
              child: const Text("Add User"),
            ),
          ],
        ),
      ),
    );
  }
}
