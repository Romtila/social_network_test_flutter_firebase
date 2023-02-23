import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_network_test_flutter_firebase/Auth/register_email_section.dart';
import 'package:social_network_test_flutter_firebase/Auth/sign_in_email_password_section.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class StartPage extends StatefulWidget {
  const StartPage({super.key, required this.title});

  final String title;

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Builder(builder: (BuildContext context) {
            return TextButton(
              child: const Text(
                "Sign out",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () async {
                final User? user = _auth.currentUser;
                if (user == null) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('No one has signed in.'),
                  ));
                  return;
                }
                await _auth.signOut();
                final String uid = user.uid;
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('$uid has successfully signed out.'),
                ));
              },
            );
          })
        ],
      ),
      body: Builder(builder: (BuildContext context) {
        final Size size = MediaQuery.of(context).size;
        return ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            SizedBox(
              height: size.height / 2, //todo: remove crutch
              width: size.width,
              child: const RegisterEmailSection(),
            ),
            SizedBox(
              height: size.height / 2, //todo: remove crutch
              width: size.width,
              child: const EmailPasswordForm(),
            ),
          ],
        );
      }),
    );
  }
}
