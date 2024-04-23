import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsetsDirectional.all(16.0),
              child: Text(
            'Login',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.black,
              fontWeight: FontWeight.w700
            ),
          )),
          TextFormField(
            decoration:  InputDecoration(labelText: "HI Amro",border: InputBorder.),

          )
        ],
      ),
    );
  }
}
