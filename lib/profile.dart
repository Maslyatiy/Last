import 'package:flutter/material.dart';
import 'package:ozon_ept/Cards.dart';

class ProfilePage extends StatelessWidget {
  final List<Cards> cartItems;
  final VoidCallback placeOrder;

  const ProfilePage({super.key, required this.cartItems, required this.placeOrder});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: cartItems.isEmpty ? null : placeOrder,
              child: Text('Оформить заказ'),
            ),
          ],
        ),
      ),
    );
  }
}
