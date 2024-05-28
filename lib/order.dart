import 'package:flutter/material.dart';
import 'package:ozon_ept/Cards.dart';

class OrderPage extends StatelessWidget {
  final List<Cards> orderItems;

  const OrderPage({super.key, required this.orderItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order'),
      ),
      body: ListView.builder(
        itemCount: orderItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(orderItems[index].name),
          );
        },
      ),
    );
  }
}
