import 'package:flutter/material.dart';
import 'package:egycoin_app/pages/signup_screen.dart';

class WelcomeButton extends StatelessWidget {
final String buttonText;

  const WelcomeButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (e)=> const SignUpScreen(),
            ),
            );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
          ),
        ),
        child: Text(
          buttonText!,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
