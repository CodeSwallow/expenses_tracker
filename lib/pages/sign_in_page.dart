import 'package:flutter/material.dart';
import 'package:expenses_tracker/widgets/signin/register_form.dart';
import 'package:expenses_tracker/widgets/signin/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);
  static const routeName = '/sign-in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.green.shade900,
      body: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.add_chart,
                          size: 60,
                          color: Colors.grey.shade200,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Expense Tracker',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade100,
                            ),
                          ),
                          Text(
                            'Tracking Made Easy',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade100,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 5.0, color: Colors.white),
                  insets: EdgeInsets.symmetric(horizontal: 35),
                ),
                tabs: [
                  Tab(
                    child: Text('Sign in', style: TextStyle(fontSize: 20)),
                  ),
                  Tab(
                    child: Text('Register', style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(
                        child: SignInForm(
                      showErrorDialog: (context, title, e) =>
                          _showErrorDialog(context, title, e),
                    )),
                    Center(
                        child: RegisterForm(
                      showErrorDialog: (context, title, e) =>
                          _showErrorDialog(context, title, e),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showErrorDialog(BuildContext context, String title, Exception e) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            title,
            style: const TextStyle(fontSize: 24),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  '${(e as dynamic).message}',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'OK',
                style: TextStyle(
                  color: Colors.green.shade900,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey.shade300,
                elevation: 5,
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 12),
              ),
            ),
          ],
        );
      },
    );
  }
}
