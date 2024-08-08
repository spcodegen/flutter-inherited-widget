import 'package:flutter/material.dart';
import 'package:inharited/inherited/state_controller.dart';
import 'package:inharited/models/user_model.dart';
import 'package:inharited/pages/add_new_user.dart';
import 'package:inharited/pages/user_page.dart';

class NewHomePage extends StatefulWidget {
  const NewHomePage({super.key});

  @override
  State<NewHomePage> createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage> {
  @override
  Widget build(BuildContext context) {
    //Get the data from InheritedWidget
    final User user = StateController.of(context).user;
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name : ${user.name}"),
            const SizedBox(height: 10),
            Text("Email : ${user.email}"),
            const SizedBox(height: 10),
            Text("Password : ${user.password}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //go to add new user page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddNewUser(),
                  ),
                );
              },
              child: const Text("Add New User"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //go to add new user page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserPage(),
                  ),
                );
              },
              child: const Text("User Page"),
            ),
          ],
        ),
      ),
    );
  }
}
