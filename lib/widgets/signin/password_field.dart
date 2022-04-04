import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _passwordHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _passwordHidden,
      obscuringCharacter: "*",
      autocorrect: false,
      enableSuggestions: false,
      style: TextStyle(color: Colors.grey.shade300),
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.grey.shade400, fontSize: 20),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
        suffixIcon: IconButton(
            icon: Icon(
              Icons.remove_red_eye,
              color:
                  _passwordHidden ? Colors.grey.shade900 : Colors.grey.shade300,
            ),
            onPressed: () {
              setState(() {
                _passwordHidden = !_passwordHidden;
              });
            }),
      ),
    );
  }
}
