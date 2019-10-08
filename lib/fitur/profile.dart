import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                        child: CircleAvatar(
                          child: InkWell(
                            splashColor: Colors.red,
                            child: SizedBox(
                              child: Icon(Icons.account_circle),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.black26,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                        child: CircleAvatar(
                          child: InkWell(
                            splashColor: Colors.red,
                            child: SizedBox(
                              child: Icon(Icons.edit),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(5),
                child: ListView(
                  children: ListTile.divideTiles(
                    context: context,
                    tiles: [
                      ListTile(
                        title: Text("Reset Password"),
                      ),
                      ListTile(
                        title: Text("About"),
                      ),
                      ListTile(
                        title: Text("Sign Out"),
                      ),
                    ],
                  ).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
