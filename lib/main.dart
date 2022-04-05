import 'package:expenses_tracker/pages/home_page.dart';
import 'package:expenses_tracker/pages/sign_in_page.dart';
import 'package:expenses_tracker/providers/application_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ApplicationState(),
      builder: (context, _) => const MyApp(),
    ),
  );
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
      home: Consumer<ApplicationState>(
        builder: (context, appState, _) =>
            Authentication(loginState: appState.loginState),
      ),
      routes: {
        SignInPage.routeName: (context) => const SignInPage(),
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}

class Authentication extends StatelessWidget {
  const Authentication({
    Key? key,
    required this.loginState,
  }) : super(key: key);

  final ApplicationLoginState loginState;

  @override
  Widget build(BuildContext context) {
    switch (loginState) {
      case ApplicationLoginState.loggedOut:
        return const SignInPage();
      case ApplicationLoginState.loggedIn:
        return const HomePage();
      default:
        return Row(
          children: const [
            Text("Internal error, this shouldn't happen..."),
          ],
        );
    }
  }
}
