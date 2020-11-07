import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_app/home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(top: 50),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Red',
                  style: TextStyle(color: Colors.black54, fontSize: 32),
                ),
                SizedBox(width: 2),
                Text(
                  'Radish',
                  style: TextStyle(color: Colors.red[200], fontSize: 32),
                )
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Freshness you can taste.',
              style: TextStyle(color: Colors.black38),
            ),
            SizedBox(height: 70),
            Image(
              image: AssetImage('images/login_banner.png'),
              height: 270,
              width: 180,
            ),
            SizedBox(height: 50),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              color: Colors.pink[300],
              padding: EdgeInsets.fromLTRB(70, 12, 70, 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            SizedBox(height: 15),
            FlatButton(
                onPressed: null,
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.pink[300]),
                ))
          ],
        ),
      )),
    );
  }
}
