import 'package:basic_statefull/shopping/product_model.dart';
import 'package:basic_statefull/shopping/shopping_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomepageItem extends StatelessWidget {
  ProductModel product;
  HomepageItem({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: .center,
        spacing: 10,
        children: [
          Icon(product.productIcon, color: Colors.teal, size: 120),
          Text(product.name, style: TextStyle(fontSize: 20, fontWeight: .bold)),
          Text("\$${product.price}", style: TextStyle(color: Colors.blueGrey)),
          Consumer<ShoppingProvider>(
            builder: (context, value, child) {
              final isPressed = value.cart.contains(product);
              return ElevatedButton(
                onPressed: () => isPressed ? null : value.addToCart(product),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isPressed ? Colors.red : Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: isPressed ? Text("Added 🍿") : Text("Add To Cart"),
              );
            },
          ),
        ],
      ),
    );
  }
}
