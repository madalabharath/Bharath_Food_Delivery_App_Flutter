import 'package:flutter/material.dart';
import 'onboarding_screen1.dart'; // Import the first onboarding screen (or the main screen of your app)

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Wait for 3 seconds before navigating to the next screen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => OnboardingScreen1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color for splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Logo Image
            Image.asset(
              'assets/logo.png',  // Your logo path
              width: 200,  // Adjust the width of the logo
              height: 200, // Adjust the height of the logo
            ),
            SizedBox(height: 20),  // Space between logo and app name

          ],
        ),
      ),
    );
  }
}
