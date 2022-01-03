import 'package:flutter/material.dart';

class RePasswordTextField extends StatelessWidget {
  const RePasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: ' Confirm Password',
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
          suffixIcon: Image.asset(
            'images/password.png',
          ),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: ' Password',
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
          suffixIcon: Image.asset(
            'images/key.png',
          ),
        ),
      ),
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: ' Email',
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
          suffixIcon: Image.asset(
            'images/email.png',
          ),
        ),
      ),
    );
  }
}

class UserNameTextField extends StatelessWidget {
  const UserNameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'User Name',
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
          suffixIcon: Image.asset(
            'images/user.png',
          ),
        ),
      ),
    );
  }
}
