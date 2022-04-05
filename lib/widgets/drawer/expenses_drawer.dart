import 'package:expenses_tracker/services/AuthenticationService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpensesDrawer extends StatelessWidget {
  const ExpensesDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.indigo.shade50,
      child: Column(
        children: [
          Container(
            color: Colors.indigo.shade900,
            child: Row(
              children: [
                const Icon(Icons.supervised_user_circle),
                Column(
                  children: const [
                    Text('Welcome Homie'),
                    Text('WAZZUP'),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Row(
                  children: const [
                    Icon(Icons.home),
                    Text('Home'),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.money),
                    Text('Expenses'),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.summarize),
                    Text('Summary'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.summarize),
                      onPressed: () {
                        context.read<AuthenticationService>().signOut();
                      },
                    ),
                    const Text('Sign Out'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
