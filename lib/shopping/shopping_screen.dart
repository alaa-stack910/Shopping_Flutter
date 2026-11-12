import 'package:basic_statefull/shopping/homepage_item.dart';
import 'package:basic_statefull/shopping/shopping_cart_screen.dart';
import 'package:basic_statefull/shopping/shopping_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingHomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var providerObject = context.read<ShoppingProvider>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text("Shoppifiy"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: providerObject.products.length,
        itemBuilder: (context, index) =>
            HomepageItem(product: providerObject.products[index]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ShoppingCartScreen()),
        ),
        child: Icon(Icons.shopping_cart, color: Colors.teal),
      ),
    );
  }
}
