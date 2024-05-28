import 'package:flutter/material.dart';
import 'package:ozon_ept/Cards.dart';

class CartPage extends StatelessWidget {
  final List<Cards> cartItems;
  final Function(Cards) removeItemFromCart;

  const CartPage({super.key, required this.cartItems, required this.removeItemFromCart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartItems[index].name),
            trailing: IconButton(
              icon: Icon(Icons.remove_shopping_cart),
              onPressed: () {
                removeItemFromCart(cartItems[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
