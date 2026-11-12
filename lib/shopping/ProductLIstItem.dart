import 'package:basic_statefull/shopping/product_model.dart';
import 'package:basic_statefull/shopping/shopping_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Productlistitem extends StatelessWidget {
  ProductModel product;

  Productlistitem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    var providerObject = context.read<ShoppingProvider>();

    return Card(
      elevation: 3,
      child: ListTile(
        leading: Icon(product.productIcon),
        subtitle: Text("\$${product.price}"),
        title: Text(product.name),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                providerObject.addToCart(product);
              },
              icon: Icon(Icons.add),
            ),

            Consumer<ShoppingProvider>(
              builder: (context, value, child) {
                return Text("${product.countity}");
              },
            ),
            IconButton(
              onPressed: () {
                providerObject.removeFromCart(product);
              },
              icon: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
