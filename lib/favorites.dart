import 'package:flutter/material.dart';
import 'package:ozon_ept/Cards.dart';

class FavoritesPage extends StatelessWidget {
  final List<Cards> favoriteItems;
  final Function(Cards) removeItemFromFavorites;

  const FavoritesPage({required this.favoriteItems, required this.removeItemFromFavorites});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favoriteItems[index].name),
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                removeItemFromFavorites(favoriteItems[index]);
              },
            )
          );
        },
      ),
    );
  }
}
