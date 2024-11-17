import 'package:flutter/material.dart';

// Dummy pages for illustration (you can replace these with actual content)
class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorites',
          style: TextStyle(color: Colors.white), // Set title text color to white
        ),
        backgroundColor: Colors.pink, // Set background color to pink
      ),
      body: Center(
        child: Text('Favorites Page'),
      ),
    );
  }
}



class AddressBookPage extends StatefulWidget {
  @override
  _AddressBookPageState createState() => _AddressBookPageState();
}

class _AddressBookPageState extends State<AddressBookPage> {
  // Store the addresses
  String homeAddress = '2-98 Madala Vaari Street, Tenali';
  String workAddress = 'Kondapaneni Townships, Mangalagiri';

  // TextEditingControllers to manage input fields
  final TextEditingController _homeController = TextEditingController();
  final TextEditingController _workController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Prepopulate controllers with the current addresses
    _homeController.text = homeAddress;
    _workController.text = workAddress;
  }

  @override
  void dispose() {
    _homeController.dispose();
    _workController.dispose();
    super.dispose();
  }

  // Function to show the address editing dialog
  void _editAddressDialog(BuildContext context, String addressType) {
    final controller = addressType == 'Home' ? _homeController : _workController;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit $addressType Address'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: '$addressType Address',
              hintText: 'Enter new $addressType address',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close dialog without saving
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  // Save the updated address
                  if (addressType == 'Home') {
                    homeAddress = controller.text;
                  } else {
                    workAddress = controller.text;
                  }
                });
                Navigator.pop(context); // Close dialog after saving
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Delivery Address',
          style: TextStyle(color: Colors.white), // Set title text color to white
        ),
        backgroundColor: Colors.pink, // Set background color to pink
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: Text('Home Address'),
              subtitle: Text(homeAddress),
              trailing: ElevatedButton(
                onPressed: () {
                  // Trigger address edit dialog for home address
                  _editAddressDialog(context, 'Home');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink, // Set button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Edit', style: TextStyle(color: Colors.white)),
              ),
            ),
            ListTile(
              title: Text('Work Address'),
              subtitle: Text(workAddress),
              trailing: ElevatedButton(
                onPressed: () {
                  // Trigger address edit dialog for work address
                  _editAddressDialog(context, 'Work');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink, // Set button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Edit', style: TextStyle(color: Colors.white)),
              ),
            ),
            // You can add more addresses here
          ],
        ),
      ),
    );
  }
}


class PaymentOptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Options',
          style: TextStyle(color: Colors.white), // Set title text color to white
        ),
        backgroundColor: Colors.pink, // Set background color to pink
      ),
      body: Center(child: Text('Payment Options Page')),
    );
  }
}


class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
          style: TextStyle(color: Colors.white), // Set title text color to white
        ),
        backgroundColor: Colors.pink, // Set background color to pink
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'For any issues, feel free to contact us at:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.email, color: Colors.pinkAccent, size: 24),
                SizedBox(width: 10),
                Text(
                  'Email: madalabharath623@gmail.com',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.pinkAccent, size: 24),
                SizedBox(width: 10),
                Text(
                  'Phone: +91 9390756146',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Implement sending a message or navigating to a contact form
                  print('Open Contact Form');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.pinkAccent, // Button background color
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Button border radius
                  ), // Text color set to white
                ),
                child: Text(
                  'Contact Us', // Button text
                  style: TextStyle(fontSize: 18), // Text style for the button
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class HelpFAQsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help & FAQs',
          style: TextStyle(color: Colors.white), // Set title text color to white
        ),
        backgroundColor: Colors.pink, // Set background color to pink
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.lock, color: Colors.blueAccent),
              title: Text(
                'How do I reset my password?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'If you have forgotten your password, follow these steps to reset it and regain access to your account.',
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              onTap: () {
                // Navigate to password reset page or show details
                print('Help with password reset');
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.green),
              title: Text(
                'How do I update my delivery address?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Learn the procedure to modify your delivery address to ensure timely and correct deliveries.',
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              onTap: () {
                // Navigate to address update page or show details
                print('Help with changing address');
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.phone_in_talk, color: Colors.orange),
              title: Text(
                'How can I contact customer support?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Get in touch with our support team for any assistance or inquiries regarding your account or orders.',
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              onTap: () {
                // Navigate to contact us page or show details
                print('Help with contacting support');
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.payment, color: Colors.purple),
              title: Text(
                'What payment methods do you accept?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'We accept multiple payment methods, including credit/debit cards, PayPal, and other secure payment options.',
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              onTap: () {
                // Navigate to payment options or show details
                print('Help with payment methods');
              },
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.local_shipping, color: Colors.blue),
              title: Text(
                'How do I track my order?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'You can track your order status and delivery progress directly through your account or our tracking page.',
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              onTap: () {
                // Navigate to order tracking page or show details
                print('Help with order tracking');
              },
            ),
          ],
        ),
      ),
    );
  }
}



class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.white), // Set title text color to white
        ),
        backgroundColor: Colors.pink, // Set background color to pink
      ),
      body: ListView(
        children: [
          // Privacy Policy Link with colored title text
          ListTile(
            leading: Icon(
              Icons.privacy_tip,
              color: Colors.red, // Set color of the icon
            ),            title: Text(
              'Privacy Policy',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
              );
            },
          ),

          // Terms of Use Link with colored title text
          ListTile(
            leading: Icon(
              Icons.text_snippet,
              color: Colors.orange, // Set color of the icon
            ),            title: Text(
              'Terms of Use',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TermsOfUsePage()),
              );
            },
          ),

          // Check for App Update with colored title text
          ListTile(
            leading: Icon(
              Icons.update,
              color: Colors.yellow, // Set color of the icon
            ),
            title: Text(
              'Check for App Updates',
            ),
            onTap: () => _checkForAppUpdate(context),
          ),
        ],
      ),
    );
  }

  // Function to simulate checking for app updates
  void _checkForAppUpdate(BuildContext context) {
    // Simulating the update check
    bool updateAvailable = false; // Simulate that no update is available.

    if (updateAvailable) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('An update is available!'),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Your app is up to date.'),
      ));
    }
  }
}


class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy Policy',
          style: TextStyle(color: Colors.white), // Set title text color to white
        ),
        backgroundColor: Colors.pink, // Set background color to pink
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            '''
 Privacy Policy


At Bharath Food App, we value your privacy and are committed to protecting your personal data. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our mobile application or use our services. Please read this policy carefully to understand how we handle your personal data.

1. Information We Collect

- Personal Information: This may include your name, email address, phone number, and payment information.
- Usage Data: We may collect information about how you use our app, such as features you use, pages you visit, and interactions with our services.
- Device Information: We may collect information about your device, such as its type, operating system, and device identifiers.

2. How We Use Your Information

- To provide and maintain our services.
- To improve and personalize your experience.
- To process transactions and manage your account.
- To communicate with you, including sending you updates, promotions, and notifications.
- To comply with legal obligations and protect our rights.

3. Sharing Your Information

- Service Providers: Third-party companies that provide services on our behalf, such as payment processors, cloud storage providers, and marketing partners.
- Legal Compliance: We may disclose your information if required by law, such as to comply with a subpoena or other legal process.

 4. Data Security

We implement reasonable security measures to protect your personal data, but please note that no method of electronic transmission or storage is 100% secure.

5. Your Rights

- Access, update, or delete your personal data.
- Object to or restrict the processing of your data.
- Withdraw consent where we rely on it for processing.

To exercise your rights or for any privacy-related inquiries, please contact us at +91 9390756146.

6. Children's Privacy

Our services are not intended for children under the age of [13/16] years, and we do not knowingly collect personal information from children. If we learn that we have inadvertently collected information from a child, we will take steps to delete that data.

7. Changes to This Privacy Policy

We may update this Privacy Policy from time to time. When we do, we will post the updated policy here and indicate the effective date at the top.

By using our app, you consent to the collection and use of your data as described in this Privacy Policy.

If you have any questions about this Privacy Policy, please contact us at +91 9390756146.
            ''',
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ),
      ),
    );
  }
}

class TermsOfUsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Terms And Conditions',
          style: TextStyle(color: Colors.white), // Set title text color to white
        ),
        backgroundColor: Colors.pink, // Set background color to pink
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            '''
Terms & Conditions

1. Use of the App

- You may only use the App for lawful purposes and in accordance with these Terms.
- You are responsible for ensuring that your use of the App does not violate any applicable laws or regulations.
- You agree not to use the App for any fraudulent or illegal activities.

2. Account Registration

- To use certain features of the App, you may be required to create an account.
- You are responsible for maintaining the confidentiality of your account credentials.
- You agree to immediately notify us if you suspect any unauthorized use of your account.

3. Privacy

- Your use of the App is also governed by our [Privacy Policy], which explains how we collect, use, and protect your personal data.

4. Payments and Transactions

- If the App offers paid features, you agree to pay all fees and charges associated with those features.
- We reserve the right to change pricing or billing methods at any time.

5. Prohibited Activities

You agree not to:

- Engage in any activity that disrupts or interferes with the functionality of the App.
- Use the App to harass, abuse, or harm others.
- Attempt to gain unauthorized access to our systems or networks.

6. Intellectual Property

- All content in the App, including but not limited to text, graphics, logos, images, and software, is the property of Bharath Food App or its licensors and is protected by copyright laws.
- You may not copy, modify, distribute, or reproduce any content from the App without prior written permission.

7. Termination

- We may suspend or terminate your access to the App if you violate these Terms.
- Upon termination, you must cease using the App and uninstall it from your device.

8. Disclaimers and Limitations of Liability

- The App is provided "as is" without any warranties of any kind, either express or implied.
- We are not liable for any indirect, incidental, or consequential damages resulting from your use of the App.

 Contact Us

If you have any questions about these Terms, please contact us at +91 9390756146.
            ''',
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ),
      ),
    );
  }
}



class ChangePasswordPage extends StatefulWidget {
  final String oldPassword;

  ChangePasswordPage({required this.oldPassword});

  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  late TextEditingController _oldPasswordController;
  late TextEditingController _newPasswordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _oldPasswordController = TextEditingController();
    _newPasswordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Customizing AppBar with background and text color
      appBar: AppBar(
        title: Text('Change Password'),
        backgroundColor: Colors.pink, // Set the background color of the AppBar
        foregroundColor: Colors.white, // Set the color of the title text
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _oldPasswordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Old Password'),
            ),
            TextField(
              controller: _newPasswordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'New Password'),
            ),
            TextField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Confirm New Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Check if the new password and confirm password match
                if (_newPasswordController.text != _confirmPasswordController.text) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Passwords do not match')),
                  );
                } else {
                  Navigator.pop(context, _newPasswordController.text); // Return the new password
                }
              },
              child: Text('Save'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.pink, // Set button text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ChangeDetailsPage extends StatefulWidget {
  final String email;
  final String password;

  ChangeDetailsPage({required this.email, required this.password});

  @override
  _ChangeDetailsPageState createState() => _ChangeDetailsPageState();
}

class _ChangeDetailsPageState extends State<ChangeDetailsPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: widget.email);
    _passwordController = TextEditingController(text: widget.password);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Customizing AppBar with background and text color
      appBar: AppBar(
        title: Text('Change Details'),
        backgroundColor: Colors.pink, // Set the background color of the AppBar
        foregroundColor: Colors.white, // Set the color of the title text
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Email input field
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16), // Space between fields
            // New Password input field
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'New Password'),
            ),
            SizedBox(height: 20),
            // Save button
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  'email': _emailController.text,
                  'password': _passwordController.text,
                }); // Return updated details
              },
              child: Text('Save'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.pink, // Set button text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class ProfileScreen extends StatelessWidget {
  // Example user data (this would typically come from your user authentication model)
  final String userName = "Bharath Sai Madala";
  final String userEmail = "madalabharath623@gmail.com";
  final String avatarUrl = "assets/bharath.jpg"; // Example URL for avatar
  final String oldPassword = "Bharath@26"; // This should come from the user's data
  final String password = "Bharath@26"; // This should come from the user's data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
        automaticallyImplyLeading: false,  // This removes the back arrow
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // Profile Header Section with Avatar and User Details
          _buildProfileHeader(),
          SizedBox(height: 20),
          // List of Profile Options
          _buildListTile(context, 'Favorites', FavoritesPage(), Icons.favorite, Colors.red),
          _buildListTile(context, 'Address Book', AddressBookPage(), Icons.location_on_rounded, Colors.blue),
          _buildListTile(context, 'Payment Options', PaymentOptionPage(), Icons.payment, Colors.green),
          _buildListTile(context, 'Contact Us', ContactUsPage(), Icons.contact_mail, Colors.orange),
          _buildListTile(context, 'Help & FAQ', HelpFAQsPage(), Icons.help, Colors.indigo),
          _buildListTile(context, 'Settings', SettingsPage(), Icons.settings, Colors.purple),
          _buildListTile(context, 'Change Password', ChangePasswordPage(oldPassword: oldPassword), Icons.lock, Colors.teal),
          _buildListTile(context, 'Change Details', ChangeDetailsPage(email: userEmail, password: password), Icons.edit, Colors.blueGrey),
           ],
      ),
    );
  }

  // Profile header with avatar and user details
  Widget _buildProfileHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center, // Align children to center
      children: [
        // Avatar with user name and email
        Center(
          child: CircleAvatar(
            radius: 60, // Adjust radius for size
            backgroundImage: NetworkImage(avatarUrl), // Use the avatar URL from your model
          ),
        ),
        SizedBox(height: 10),
        Text(
          userName,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Text(
          userEmail,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  // ListTile with icons and colors
  ListTile _buildListTile(BuildContext context, String title, Widget page, IconData icon, Color iconColor) {
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}