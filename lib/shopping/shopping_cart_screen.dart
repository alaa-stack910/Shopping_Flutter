import 'package:basic_statefull/shopping/ProductLIstItem.dart';
import 'package:basic_statefull/shopping/homepage_item.dart';
import 'package:basic_statefull/shopping/shopping_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingCartScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var providerObject = context.read<ShoppingProvider>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Shoppifiy"),
      ),
      body: Consumer<ShoppingProvider>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: providerObject.cart.length,
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                Productlistitem(product: providerObject.cart[index]),
          );
        },
      ),
      bottomNavigationBar: Consumer<ShoppingProvider>(
        builder: (context, value, child) {
          return Container(
            height: 50,
            color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "${providerObject.calculateTotal()}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      //  BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Container(child: Text("${providerObject.calculateTotal()}")),
      //     ),

      //   ],
      // ),
    );
  }
}
