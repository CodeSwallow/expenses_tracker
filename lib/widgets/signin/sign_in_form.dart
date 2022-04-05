import 'package:expenses_tracker/services/AuthenticationService.dart';
import 'package:expenses_tracker/widgets/signin/email_field.dart';
import 'package:expenses_tracker/widgets/signin/password_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key, required this.showErrorDialog}) : super(key: key);
  final Function showErrorDialog;

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 40, bottom: 10),
              child: EmailField(emailController: emailController),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 40),
              child: PasswordField(passwordController: passwordController),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  context
                      .read<AuthenticationService>()
                      .signIn(emailController.text, passwordController.text);
                }
              },
              child: Text(
                'Sign In',
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: TextButton(
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade200),
                ),
                onPressed: () {},
              ),
            ),
            Text(
              'Or use one of the following to login',
              style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 2,
                    fillColor: Colors.grey.shade900,
                    padding: const EdgeInsets.all(15),
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.phone_android,
                      color: Colors.white,
                    ),
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 2,
                    fillColor: Colors.grey.shade900,
                    padding: const EdgeInsets.all(15),
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.phone_android,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
