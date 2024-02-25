import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0 ,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
          'lib/icons/bg.avif',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          ),
          const SafeArea(
            child: Text('Welcome'),
            ),
        ],
      ),
    );
  }
}