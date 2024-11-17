import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For formatting the date

// Order model to represent each food order
class Order {
  final String imageUrl;
  final String name;
  final String orderId;
  final String date;
  final String status;

  Order({
    required this.imageUrl,
    required this.name,
    required this.orderId,
    required this.date,
    required this.status,
  });
}

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sample list of food orders with additional details (orderId, date, status)
    final List<Order> orders = [
      Order(
        imageUrl: 'assets/Chicken/grilled_chicken.jpg',
        name: 'Grilled Chicken',
        orderId: 'ORD12345',
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        status: 'Pending',
      ),
      Order(
        imageUrl: 'assets/Fish/grilled_fish.jpg',
        name: 'Grilled Fish',
        orderId: 'ORD12346',
        date: DateFormat('yyyy-MM-dd').format(DateTime.now().subtract(Duration(days: 1))),
        status: 'Completed',
      ),
      Order(
        imageUrl: 'assets/Fried_Rice/pineapple_fried_rice.jpg',
        name: 'Pineapple Fried Rice',
        orderId: 'ORD12347',
        date: DateFormat('yyyy-MM-dd').format(DateTime.now().subtract(Duration(days: 2))),
        status: 'In Progress',
      ),
      Order(
        imageUrl: 'assets/Pastries/chocolate_pastry.jpg',
        name: 'Chocolate Pastry',
        orderId: 'ORD12348',
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        status: 'Pending',
      ),
      // Add more orders here...
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Orders History', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
        automaticallyImplyLeading: false,  // This removes the back arrow
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) {
            final order = orders[index];
            return Card(
              elevation: 4.0,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: Image.asset(
                  order.imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(order.name),
                subtitle: Text('Order ID: ${order.orderId}'),
                trailing: Text(order.status, style: TextStyle(color: _getStatusColor(order.status))),
                onTap: () {
                  // Navigate to the Order Details screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailsScreen(order: order),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  // Function to determine color based on order status
  Color _getStatusColor(String status) {
    switch (status) {
      case 'Completed':
        return Colors.green;
      case 'In Progress':
        return Colors.yellow;
      case 'Pending':
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}

// Order Details Screen to show more information about the selected order
class OrderDetailsScreen extends StatelessWidget {
  final Order order;

  OrderDetailsScreen({required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(order.imageUrl),
            SizedBox(height: 16),
            Text(
              order.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Order ID: ${order.orderId}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Date: ${order.date}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Status: ${order.status}',
              style: TextStyle(fontSize: 18, color: _getStatusColor(order.status)),
            ),
          ],
        ),
      ),
    );
  }

  // Function to determine color based on order status
  Color _getStatusColor(String status) {
    switch (status) {
      case 'Completed':
        return Colors.green;
      case 'In Progress':
        return Colors.yellow;
      case 'Pending':
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}
