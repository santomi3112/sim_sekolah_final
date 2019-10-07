import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialButton(
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
        height: 43.0,
        color: Colors.blue,
        onPressed: () {
          Navigator.of(context).pushReplacementNamed('/home');
        },
      ),
    );
  }
}

class RegisterButton extends StatefulWidget {
  @override
  _RegisterButtonState createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialButton(
        child: Text(
          "Register",
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
        height: 43.0,
        color: Colors.blue,
        onPressed: () {
          Navigator.of(context).pushReplacementNamed('/home');
        },
      ),
    );
  }
}
