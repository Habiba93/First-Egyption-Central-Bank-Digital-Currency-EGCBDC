import 'package:flutter/material.dart';
import 'package:egycoin_app/components/rounded_button.dart';
import 'package:egycoin_app/components/rounded_input_field.dart';
import 'package:egycoin_app/pages/signup_page.dart';

class TransferMoneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "TRANSFER MONEY",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              RoundedInputField(
                hintText: "Receiver's Phone number",
                icon: Icons.phone,
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Amount",
                icon: Icons.money,
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Reason",
                icon: Icons.description,
                onChanged: (value) {},
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              RoundedButton(
                text: "Send Money",
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUpPage();
                  }));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
