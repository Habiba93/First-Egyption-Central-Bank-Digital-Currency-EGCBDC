import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
             const SizedBox(height: 50),
              //logo
              Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),
              //welcome back! you have been missed
              Text(
                'Welcome Back! You\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),
              //username textfield

              //password textfield

              //forgot password?

              //sign in button

              //not a member register now!
            ],
          ),
        ),
      ),
    );
  }
}
