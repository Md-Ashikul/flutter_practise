import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  // List of items in the checkout cart
  final List<Item> _items = [];

  // Total amount of all items in the cart
  double _totalAmount = 0.0;

  @override
  void initState() {
    super.initState();

    // Add some sample items to the cart
    _items.add(Item(name: 'Pullover', color: 'Black', size: 'L', price: 51.0, quantity: 1, imageUrl: 'https://lovet.g.shopcadacdn.com/sites/files/lovet/images/products/202305/1000x1500/21may-r1-235.jpg'));
    _items.add(Item(name: 'T-Shirt', color: 'Gray', size: 'L', price: 30.0, quantity: 1, imageUrl: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dCUyMHNoaXJ0fGVufDB8fDB8fHww&w=1000&q=80'));
    _items.add(Item(name: 'Sport Dress', color: 'Black', size: 'M', price: 43.0, quantity: 1, imageUrl: 'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/21467298/2023/2/8/13759430-c33f-4bc6-800f-d25576520eff1675848049180-Nike-Sportswear-Womens-Gingham-Short-Sleeve-Dress-4111675848-1.jpg'));

    // Calculate the total amount
    _calculateTotalAmount();
  }

  void _calculateTotalAmount() {
    _totalAmount = 0.0;
    for (var item in _items) {
      _totalAmount += item.price * item.quantity;
    }
  }

  void _onItemQuantityChanged(Item item, int newQuantity) {
    item.quantity = newQuantity;
    setState(() {});

    // Calculate the total amount
    _calculateTotalAmount();
  }

  void _onCheckoutPressed() {
    // Show a snackbar with a congratulating message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Congratulations! Your order has been placed.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bag'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];

          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    item.imageUrl,
                    width: 80.0, // Adjust the width as needed
                    height: 80.0, // Adjust the height as needed
                  ),
                  SizedBox(height: 8.0),
                  Text(item.name),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text('Color: ${item.color}'),
                      SizedBox(width: 8.0),
                      Text('Size: ${item.size}'),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text('Unit price: \$' + item.price.toStringAsFixed(2)),
                      SizedBox(width: 8.0),
                      Text('Quantity: ${item.quantity}'),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () => _onItemQuantityChanged(item, item.quantity + 1),
                      ),
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () => _onItemQuantityChanged(item, item.quantity - 1),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total: \$' + _totalAmount.toStringAsFixed(2)),
              ElevatedButton(
                onPressed: _onCheckoutPressed,
                child: Text('CHECK OUT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Item {
  final String name;
  final String color;
  final String size;
  final double price;
  int quantity;
  final String imageUrl; // Add an image URL or asset path

  Item({
    required this.name,
    required this.color,
    required this.size,
    required this.price,
    required this.quantity,
    required this.imageUrl,
  });
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckoutPage(),
    );
  }
}
