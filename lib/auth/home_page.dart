import 'package:firebase_authentication_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {
              GoogleSignIn googleAccount = GoogleSignIn();
              googleAccount.disconnect();
              Get.off(loginPage());
            },
            icon: Icon(Icons.exit_to_app))
      ]),
    );
  }
}
