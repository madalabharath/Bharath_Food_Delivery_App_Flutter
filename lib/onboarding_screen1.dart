import 'package:flutter/material.dart';
import 'onboarding_screen2.dart'; // Import the second onboarding screen

class OnboardingScreen1 extends StatelessWidget {
  final String title = 'Fresh Food';
  final String subtitle = 'We make it simple to find the food you crave. Enter your address and let us do the rest.';
  final String image = 'assets/onboard1.jpg'; // Replace with your actual image asset

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Align to the top
        children: [
          // Spacer to push the image a bit lower
          SizedBox(height: 60), // Adds space between the top and image

          // Image at the top (with a bit more spacing)
          Image.asset(
            image,
            width: 350,
            height: 400, // Adjust the height of the image
            fit: BoxFit.cover, // Ensures the image scales properly
          ),

          SizedBox(height: 30), // Space below the image

          // Title Text
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 15), // Space between title and subtitle

          // Subtitle Text
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),

          Spacer(), // Pushes the "Next" button to the bottom

          // "Next" Button at the bottom right
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Align(
              alignment: Alignment.bottomCenter, // Align the button to the center
              child: Container(
                width: double.infinity, // Make the button full width
                height: 50, // Set a fixed height for the button
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the second onboarding screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => OnboardingScreen2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Red background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12), // Adjust padding to center text
                  ),
                  child: Text(
                    'Next', // Text on the button
                    style: TextStyle(fontSize: 18, color: Colors.white), // White text color
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 40), // Adding some space at the bottom
        ],
      ),
    );
  }
}
