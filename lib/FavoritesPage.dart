import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  final List<Map<String, String>> favoriteItems;

  FavoritesPage({required this.favoriteItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
      ),
      body: favoriteItems.isEmpty
          ? Center(child: Text('No items in favorites.', style: TextStyle(fontSize: 18)))
          : ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          final item = favoriteItems[index];
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
