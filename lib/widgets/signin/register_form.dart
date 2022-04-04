import 'package:expenses_tracker/widgets/signin/email_field.dart';
import 'package:expenses_tracker/widgets/signin/password_field.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 10),
            child: const EmailField(),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: const PasswordField(),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 40),
            child: const PasswordField(),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Create Account',
              style: TextStyle(
                color: Colors.green.shade900,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.grey.shade300,
              elevation: 5,
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 12),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Or',
              style: TextStyle(fontSize: 18, color: Colors.grey.shade200),
            ),
          ),
          Text(
            'Or use one of the following to create account',
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
    );
  }
}
