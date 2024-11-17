import 'package:flutter/material.dart';

class FoodDetailPage extends StatefulWidget {
  final Map<String, String> item;

  // Constructor to receive the selected food item
  FoodDetailPage({required this.item});

  @override
  _FoodDetailPageState createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  int quantity = 1; // Initial quantity
  double price = 0.0; // Will store the price per item
  List<Map<String, String>> cartItems = []; // List to store cart items

  @override
  void initState() {
    super.initState();
    // Assuming the price is stored as a string in the item map, we parse it into a double
    price = double.tryParse(widget.item['price'] ?? '0.0') ?? 0.0;
  }

  // Function to handle adding an item to the cart
  void addToCart() {
    // Create a copy of the item with the current quantity
    final cartItem = {
      'name': widget.item['name']!,
      'quantity': quantity.toString(),
      'totalPrice': (price * quantity).toStringAsFixed(2),
    };

    setState(() {
      cartItems.add(cartItem);
    });

    // Show a snackbar for confirmation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${widget.item['name']} added to cart')),
    );
  }

  // Function to handle adding an item to favorites (you can customize this)
  void addToFavorites() {
    // For now, just show a confirmation snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${widget.item['name']} added to favorites')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.item['name']!,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Image section
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.item['image']!,
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),

            // Name and description section
            Text(
              widget.item['name']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              widget.item['description'] ?? 'No description available.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Price and Review section
            Row(
              children: [
                Text(
                  'Price: \$${(price * quantity).toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.star, color: Colors.yellow, size: 20),
                Text(
                  ' 4.5',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Time and Vegetarian/Non-Vegetarian section
            Row(
              children: [
                Icon(Icons.access_time, color: Colors.pink),
                SizedBox(width: 8),
                Text(
                  widget.item['time'] ?? '20 mins',
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                Icon(
                  widget.item['isVegetarian'] == 'true'
                      ? Icons.restaurant_menu
                      : Icons.fastfood,
                  color: widget.item['isVegetarian'] == 'true'
                      ? Colors.green
                      : Colors.red,
                ),
                SizedBox(width: 8),
                Text(
                  widget.item['isVegetarian'] == 'true'
                      ? 'Vegetarian'
                      : 'Non-Vegetarian',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Ingredients section
            Text(
              'Ingredients:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.item['ingredients'] ?? 'No ingredients listed.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Nutritional Information section
            Text(
              'Nutritional Information:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.item['nutrition'] ?? 'No nutritional info available.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Quantity and Price calculation
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove, color: Colors.pink),
                  onPressed: () {
                    if (quantity > 1) {
                      setState(() {
                        quantity--;
                      });
                    }
                  },
                ),
                Text(
                  '$quantity',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.pink),
                  onPressed: () {
                    setState(() {
                      quantity++;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16),

            // Add to Cart and Add to Favorites Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: addToCart,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink, // Cart Button Color
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  ),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: addToFavorites,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Favorites Button Color
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  ),
                  child: Text(
                    'Add to Favorites',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
