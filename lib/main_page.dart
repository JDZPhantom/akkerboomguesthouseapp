import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:akkerboomsdemo/login_screen.dart';
import 'package:akkerboomsdemo/home_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
          builder:(context,snapshot) {
            if(snapshot.hasData){
              return HomePage();
            }else{
              return LoginPage();
            }
          }),
    );
  }
}