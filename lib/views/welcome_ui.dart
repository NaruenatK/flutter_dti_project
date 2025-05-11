// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_dti_project/views/login_ui.dart';
import 'package:flutter_dti_project/views/signup_ui.dart';

class WelcomeUi extends StatelessWidget {
  const WelcomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 325,
              height: 325,
            ),
            SizedBox(
              height: 150,
            ),
            Text(
              'Built Awesome Apps',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            Text(
              'Let\'s put your creativity to the',
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            Text(
              'development highway.',
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginUI(),
                      ),
                    );
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(150, 55),
                    side: BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpUI(),
                      ),
                    );
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(150, 55),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
