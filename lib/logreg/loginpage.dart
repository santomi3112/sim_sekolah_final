import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:sim_sekolah_final/fungsi/button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(
              height: 120.0,
            ),
            TextFormField(
              //email
              keyboardType: TextInputType.emailAddress,
              validator: (input) {
                if (input.isEmpty) {
                  return 'Please fill this form!';
                }
              },
              onSaved: (input) => _email = input,
              decoration: InputDecoration(
                fillColor: Colors.lightBlue[50],
                filled: true,
                suffix: Container(
                  width: 5,
                  height: 5,
                  color: Colors.blue,
                ),
                prefixIcon: Icon(Icons.email),
                prefixText: "Email: ",
                prefixStyle:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            TextFormField(
              //pwd
              textInputAction: TextInputAction.continueAction,
              validator: (input) {
                if (input.isEmpty) {
                  return 'Please fill this form!';
                }
              },
              onSaved: (input) => _password = input,
              decoration: InputDecoration(
                fillColor: Colors.lightBlue[50],
                filled: true,
                suffix: Container(
                  width: 5,
                  height: 5,
                  color: Colors.blue,
                ),
                prefixIcon: Icon(Icons.vpn_key),
                prefixText: "Password: ",
                prefixStyle:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 165.0,
            ),
            LoginButton(),
            GoogleSignInButton(
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
