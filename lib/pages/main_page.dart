import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:paws/pages/log_in_screen.dart';
import '../auth/auth_page.dart';
import 'Home_Page.dart';

class Main_Page extends StatelessWidget {
  const Main_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          } else {
            return const LoginScreen();
          }
        },
      ),
    );
  }
}
