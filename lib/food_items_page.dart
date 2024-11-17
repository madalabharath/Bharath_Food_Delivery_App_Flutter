import 'package:flutter/material.dart';
import 'FoodDetailPage.dart'; // Ensure this import is correct

class FoodItemsPage extends StatelessWidget {
  final String? category;
  final List<Map<String, String>> items;

  // Constructor to receive category and items
  FoodItemsPage({this.category, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$category Items', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            elevation: 4, // Shadow effect for the card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Rounded corners for card
            ),
            child: GestureDetector(
              onTap: () {
                // Navigate to FoodDetailPage when the entire card is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetailPage(item: item),
                  ),
                );
              },
              child: ListTile(
                contentPadding: EdgeInsets.all(16), // Padding inside the card
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      item['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  item['name']!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '', // No price shown in subtitle
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.green, // Just keeping green color
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
