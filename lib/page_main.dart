import 'package:flutter/material.dart';
import 'package:ozon_ept/Cards.dart';
import 'page_ne_main.dart';

class PageMain extends StatelessWidget {
  final Function(Cards) addItemToCart;
  final Function(Cards) addItemToFavorites;

  PageMain({required this.addItemToCart, required this.addItemToFavorites});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GG"),
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: cards.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageNeMain(cards: cards[index])),
              );
            },
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[300],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    cards[index].images.mainImage,
                    height: 100,
                    width: 100,
                  ),
                  Text(
                    cards[index].name,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {
                          addItemToCart(cards[index]);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Added to cart')),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite),
                        onPressed: () {
                          addItemToFavorites(cards[index]);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Added to favorites')),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
