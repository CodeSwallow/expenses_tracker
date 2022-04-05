import 'package:expenses_tracker/widgets/drawer/expenses_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/home-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const ExpensesDrawer(),
      appBar: AppBar(),
      body: const Center(child: Text('Home Page')),
    );
  }
}
