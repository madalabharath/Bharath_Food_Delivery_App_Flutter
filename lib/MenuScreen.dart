import 'package:flutter/material.dart';
import 'food_items_page.dart'; // Import the FoodItemsPage from the new file
import 'CartPage.dart'; // Import CartScreen
import 'FavoritesPage.dart'; // Import FavoritesScreen

class MenuScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'title': 'Chicken', 'image': 'assets/chicken.jpg', "items": [
      {"name": "Grilled Chicken", "image": "assets/Chicken/grilled_chicken.jpg"},
      {"name": "Fried Chicken", "image": "assets/Chicken/fried_chicken.jpg"},
      {"name": "Chicken Wings", "image": "assets/Chicken/chicken_wings.jpg"},
      {"name": "Chicken Tikka", "image": "assets/Chicken/chicken_tikka.jpg"},
      {"name": "Chicken Kebab", "image": "assets/Chicken/chicken_kebab.jpg"},
      {"name": "Roast Chicken", "image": "assets/Chicken/roast_chicken.jpg"},
      {"name": "Chicken Stew", "image": "assets/Chicken/chicken_stew.jpg"}
    ]},
    {'title': 'Biryani', 'image': 'assets/biryani.jpg',  "items": [
      {"name": "Chicken Biryani", "image": "assets/Biryani/chicken_biryani.jpg"},
      {"name": "Mutton Biryani", "image": "assets/Biryani/mutton_biryani.jpg"},
      {"name": "Vegetable Biryani", "image": "assets/Biryani/veg_biryani.jpg"},
      {"name": "Paneer Biryani", "image": "assets/Biryani/paneer_biryani.jpg"},
      {"name": "Egg Biryani", "image": "assets/Biryani/egg_biryani.jpg"},
      {"name": "Fish Biryani", "image": "assets/Biryani/fish_biryani.jpg"}
    ]},
    {'title': 'Fish', 'image': 'assets/fish.jpg', "items": [
      {"name": "Grilled Fish", "image": "assets/Fish/grilled_fish.jpg"},
      {"name": "Fish Curry", "image": "assets/Fish/fish_curry.jpg"},
      {"name": "Fish Fry", "image": "assets/Fish/fish_fry.jpg"},
      {"name": "Fish Tikka", "image": "assets/Fish/fish_tikka.jpg"},
      {"name": "Fish Masala", "image": "assets/Fish/fish_masala.jpg"},
      {"name": "Steamed Fish", "image": "assets/Fish/steamed_fish.jpg"},
      {"name": "Baked Fish", "image": "assets/Fish/baked_fish.jpg"}
    ]},
    {'title': 'Paneer', 'image': 'assets/panner.jpg', "items": [
      {"name": "Paneer Tikka", "image": "assets/Paneer/paneer_tikka.jpg"},
      {"name": "Paneer Bhurji", "image": "assets/Paneer/paneer_bhurji.jpg"},
      {"name": "Shahi Paneer", "image": "assets/Paneer/shahi_paneer.jpg"},
      {"name": "Paneer Makhani", "image": "assets/Paneer/paneer_makhani.jpg"},
      {"name": "Chili Paneer", "image": "assets/Paneer/chili_paneer.jpg"},
      {"name": "Palak Paneer", "image": "assets/Paneer/palak_paneer.jpg"}
    ]},
    {'title': 'Fried Rice', 'image': 'assets/friedrice.jpg',"items": [
      {"name": "Veg Fried Rice", "image": "assets/Fried_Rice/veg_fried_rice.jpg"},
      {"name": "Chicken Fried Rice", "image": "assets/Fried_Rice/chicken_fried_rice.jpg"},
      {"name": "Egg Fried Rice", "image": "assets/Fried_Rice/egg_fried_rice.jpg"},
      {"name": "Prawn Fried Rice", "image": "assets/Fried_Rice/prawn_fried_rice.jpg"},
      {"name": "Pineapple Fried Rice", "image": "assets/Fried_Rice/pineapple_fried_rice.jpg"},
      {"name": "Schezwan Fried Rice", "image": "assets/Fried_Rice/schezwan_fried_rice.jpg"}
    ]},
    {'title': 'Burgers', 'image': 'assets/burgers.jpg',"items": [
      {"name": "Veg Burger", "image": "assets/Burgers/veg_burger.jpg"},
      {"name": "Chicken Burger", "image": "assets/Burgers/chicken_burger.jpg"},
      {"name": "Cheese Burger", "image": "assets/Burgers/cheese_burger.jpg"},
      {"name": "Chicken Mayo Burger", "image": "assets/Burgers/chicken_mayo_burger.jpg"},
      {"name": "Spicy Veg Burger", "image": "assets/Burgers/spicy_veg_burger.jpg"},
      {"name": "Double Patty Burger", "image": "assets/Burgers/double_patt_burger.jpg"}
    ]},
    {'title': 'Pizzas', 'image': 'assets/pizzas.jpg',  "items": [
      {"name": "Margherita Pizza", "image": "assets/Pizzas/margherita_pizza.jpg"},
      {"name": "Pepperoni Pizza", "image": "assets/Pizzas/pepperoni_pizza.jpg"},
      {"name": "Veg Pizza", "image": "assets/Pizzas/veg_pizza.jpg"},
      {"name": "BBQ Chicken Pizza", "image": "assets/Pizzas/bbq_chicken_pizza.jpg"},
      {"name": "Mushroom Pizza", "image": "assets/Pizzas/mushroom_pizza.jpg"},
      {"name": "Cheese Burst Pizza", "image": "assets/Pizzas/cheese_burst_pizza.jpg"}
    ]},
    {'title': 'Pastries', 'image': 'assets/pastries.jpg',  "items": [
      {"name": "Chocolate Pastry", "image": "assets/Pastries/chocolate_pastry.jpg"},
      {"name": "Vanilla Pastry", "image": "assets/Pastries/vanilla_pastry.jpg"},
      {"name": "Strawberry Pastry", "image": "assets/Pastries/strawberry_pastry.jpg"},
      {"name": "Black Forest Pastry", "image": "assets/Pastries/black_forest_pastry.jpg"},
      {"name": "Coffee Pastry", "image": "assets/Pastries/coffee_pastry.jpg"},
      {"name": "Fruit Pastry", "image": "assets/Pastries/fruit_pastry.jpg"},
      {"name": "Lemon Pastry", "image": "assets/Pastries/lemon_pastry.jpg"},
      {"name": "Caramel Pastry", "image": "assets/Pastries/caramel_pastry.jpg"}
    ]},
    {'title': 'Coffee', 'image': 'assets/coffee.jpg',"items": [
      {"name": "Espresso", "image": "assets/Coffee/espresso.jpg"},
      {"name": "Cappuccino", "image": "assets/Coffee/cappuccino.jpg"},
      {"name": "Latte", "image": "assets/Coffee/latte.jpg"},
      {"name": "Mocha", "image": "assets/Coffee/mocha.jpg"},
      {"name": "Americano", "image": "assets/Coffee/americano.jpg"},
      {"name": "Flat White", "image": "assets/Coffee/flat_white.jpg"},
      {"name": "Macchiato", "image": "assets/Coffee/macchiato.jpg"}
    ]},
    {'title': 'Ice Creams', 'image': 'assets/icecreams.jpg', "items": [
      {"name": "Vanilla Ice Cream", "image": "assets/Ice_Creams/vanilla_ice_cream.jpg"},
      {"name": "Chocolate Ice Cream", "image": "assets/Ice_Creams/chocolate_ice_cream.jpg"},
      {"name": "Strawberry Ice Cream", "image": "assets/Ice_Creams/strawberry_ice_cream.jpg"},
      {"name": "Butterscotch Ice Cream", "image": "assets/Ice_Creams/butterscotch_ice_cream.jpg"},
      {"name": "Pistachio Ice Cream", "image": "assets/Ice_Creams/pistachio_ice_cream.jpg"},
      {"name": "Mango Ice Cream", "image": "assets/Ice_Creams/mango_ice_cream.jpg"},
      {"name": "Tutti Frutti Ice Cream", "image": "assets/Ice_Creams/tutti_frutti_ice_cream.jpg"},
      {"name": "Coconut Ice Cream", "image": "assets/Ice_Creams/coconut_ice_cream.jpg"}
    ]},
    {'title': 'Tiffins', 'image': 'assets/tiffins.jpg', "items": [
      {"name": "Idli", "image": "assets/Tiffins/idli.jpg"},
      {"name": "Dosa", "image": "assets/Tiffins/dosa.jpg"},
      {"name": "Vada", "image": "assets/Tiffins/vada.jpg"},
      {"name": "Pongal", "image": "assets/Tiffins/pongal.jpg"},
      {"name": "Uttapam", "image": "assets/Tiffins/uttapam.jpg"},
      {"name": "Poori", "image": "assets/Tiffins/poori.jpg"}
    ]},
    {'title': 'Shakes', 'image': 'assets/shakes.jpg', "items": [
      {"name": "Chocolate Shake", "image": "assets/Shakes/chocolate_shake.jpg"},
      {"name": "Strawberry Shake", "image": "assets/Shakes/strawberry_shake.jpg"},
      {"name": "Mango Shake", "image": "assets/Shakes/mango_shake.jpg"},
      {"name": "Banana Shake", "image": "assets/Shakes/banana_shake.jpg"},
      {"name": "Vanilla Shake", "image": "assets/Shakes/vanilla_shake.jpg"},
      {"name": "Pineapple Shake", "image": "assets/Shakes/pineapple_shake.jpg"},
      {"name": "Oreo Shake", "image": "assets/Shakes/oreo_shake.jpg"}
    ]},
    {'title': 'Juice', 'image': 'assets/juices.jpg', "items": [
      {"name": "Orange Juice", "image": "assets/Juice/orange_juice.jpg"},
      {"name": "Mango Juice", "image": "assets/Juice/mango_juice.jpg"},
      {"name": "Apple Juice", "image": "assets/Juice/apple_juice.jpg"},
      {"name": "Carrot Juice", "image": "assets/Juice/carrot_juice.jpg"},
      {"name": "Watermelon Juice", "image": "assets/Juice/watermelon_juice.jpg"},
      {"name": "Pineapple Juice", "image": "assets/Juice/pineapple_juice.jpg"}
    ]},
    {'title': 'Noodles', 'image': 'assets/noodles.jpg', "items": [
      {"name": "Veg Noodles", "image": "assets/Noodles/veg_noodles.jpg"},
      {"name": "Chicken Noodles", "image": "assets/Noodles/chicken_noodles.jpg"},
      {"name": "Chow Mein", "image": "assets/Noodles/chow_mein.jpg"},
      {"name": "Schezwan Noodles", "image": "assets/Noodles/schezwan_noodles.jpg"},
      {"name": "Egg Noodles", "image": "assets/Noodles/egg_noodles.jpg"},
      {"name": "Hot Garlic Noodles", "image": "assets/Noodles/hot_garlic_noodles.jpg"}
    ]},
    {'title': 'Sandwich', 'image': 'assets/sandwich.jpg',"items": [
      {"name": "Veg Sandwich", "image": "assets/Sandwich/veg_sandwich.jpg"},
      {"name": "Grilled Sandwich", "image": "assets/Sandwich/grilled_sandwich.jpg"},
      {"name": "Cheese Sandwich", "image": "assets/Sandwich/cheese_sandwich.jpg"},
      {"name": "Toast Sandwich", "image": "assets/Sandwich/toast_sandwich.jpg"}
    ]}
  ];

  get favoriteItems => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
        automaticallyImplyLeading: false, // Ensures no back arrow appears
        actions: <Widget>[
          // Cart Icon
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              // Navigate to the Cart Screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage(cartItems: [],)), // Navigate to Cart
              );
            },
          ),
          // Favorites Icon
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.white),
            onPressed: () {
              // Navigate to the Favorites Screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoritesPage(favoriteItems: favoriteItems)), // Navigate to Favorites
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 22),
            leading: Container(
              width: 100, // Adjusted width for a larger box
              height: 100, // Adjusted height for a larger box
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
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
                  category['image']!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              category['title'] ?? 'No Title',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              // Navigate to the food items page for this category
              _navigateToCategory(context, category['title'], category['items']);
            },
          );
        },
      ),
    );
  }

  // Navigate to a different page to show items for the selected category
  void _navigateToCategory(BuildContext context, String? category, List<Map<String, String>> items) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodItemsPage(category: category, items: items),
      ),
    );
  }
}