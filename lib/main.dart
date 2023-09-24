import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProductList(),
  ));
}

class Product {
  String name;
  int price;
  int counter;

  Product(this.name, this.price, this.counter);
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> products = [
    Product('Product 1', 10, 0),
    Product('Product 2', 20, 0),
    Product('Product 3', 25, 0),
    Product('Product 4', 30, 0),
    Product('Product 5', 40, 0),
    Product('Product 6', 45, 0),
    Product('Product 7', 50, 0),
    Product('Product 8', 60, 0),
    Product('Product 9', 65, 0),
    Product('Product 10', 80, 0),
    Product('Product 11', 90, 0),
    Product('Product 12', 70, 0),
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(products[index].name),
                subtitle: Text('Price: ${products[index].price}'),
                trailing: ElevatedButton(
                  child: Text('Buy Now'),
                  onPressed: () {
                    setState(() {
                      products[index].counter++;
                      if (products[index].counter == 5) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Congratulations!'),
                              content: Text('You\'ve bought 5 ${products[index].name}!'),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    });
                  },
                ),
              );
            },
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage(products)),
                );
              },
              child: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  final List<Product> products;

  CartPage(this.products);

  @override
  Widget build(BuildContext context) {
    int total = products.fold(0, (sum, item) => sum + item.counter);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Total products bought: $total'),
      ),
    );
  }
}
