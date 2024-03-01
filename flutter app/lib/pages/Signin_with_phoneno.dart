import 'package:egycoin_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:egycoin_app/util/button.dart';

class PhoneNumberLoginPage extends StatelessWidget {
  const PhoneNumberLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Wallpaper section
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/icons/backg.JPG'), // Replace with your wallpaper image
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo
                  Image.asset(
                    'lib/icons/cropped-logo.jpg', // Replace with your logo image path
                    height: 100,
                    width: 100,
                    // Adjust the height and width as needed
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Enter your phone number to continue',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Colors.grey[700],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Button(
                    buttonText: 'Continue',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }),
                      );
                      //Perform phone number verification or login action
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
