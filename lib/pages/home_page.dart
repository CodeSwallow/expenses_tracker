import 'package:expenses_tracker/providers/application_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/home-page';

  @override
  Widget build(BuildContext context) {
    return Consumer<ApplicationState>(
      builder: (context, appState, _) => Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.indigo.shade900,
          child: TextButton(
            child: const Text('Sign out'),
            onPressed: () {
              appState.signOut();
            },
          ),
        ),
        appBar: AppBar(),
        body: const Center(child: Text('Home Page')),
      ),
    );
  }
}
