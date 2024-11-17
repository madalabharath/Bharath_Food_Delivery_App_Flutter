import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final List<Map<String, String>> cartItems;

  CartPage({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
      ),
      body: cartItems.isEmpty
          ? Center(child: Text('No items in the cart.', style: TextStyle(fontSize: 18)))
          : ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            leading: Image.asset(item['image']!, width: 50, height: 50),
            title: Text(item['name']!),
            subtitle: Text('Price: \$${item['price']}'),
          );
        },
      ),
    );
  }
}

