import 'package:expenses_tracker/pages/home_page.dart';
import 'package:expenses_tracker/pages/sign_in_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SignInPage.routeName,
      routes: {
        SignInPage.routeName: (context) => const SignInPage(),
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
