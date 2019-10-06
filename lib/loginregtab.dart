import 'package:flutter/material.dart';
import 'package:sim_sekolah_final/logreg/loginpage.dart';
import 'package:sim_sekolah_final/logreg/registerpage.dart';

class Loginreg extends StatefulWidget {
  Loginreg({this.title}) : super();
  final String title;
  @override
  _LoginregState createState() => _LoginregState();
}

class _LoginregState extends State<Loginreg> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Welcome!"),
          elevation: 3,
          centerTitle: true,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "Login"),
              Tab(text: "Register"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: LoginPage(),
            ),
            Center(
              child: RegisterPage(),
            ),
          ],
        ),
      ),
    );
  }
}
