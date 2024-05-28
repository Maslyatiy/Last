import 'package:flutter/material.dart';
import 'page_main.dart';
import 'auth.dart.dart';
import 'cart.dart';
import 'favorites.dart';
import 'profile.dart';
import 'order.dart';
import 'package:ozon_ept/Cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/auth',
      routes: {
        '/auth': (context) => AuthPage(),
        '/home': (context) => HomeScreen(),
        '/cart': (context) => CartPage(cartItems: [], removeItemFromCart: (item) {}),
        '/favorites': (context) => FavoritesPage(favoriteItems: [], removeItemFromFavorites: (item) {}),
        '/profile': (context) => ProfilePage(cartItems: [], placeOrder: () {}),
        '/order': (context) => OrderPage(orderItems: []),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Cards> _cartItems = [];
  List<Cards> _favoriteItems = [];
  List<Cards> _orderItems = [];

  static List<Widget> _widgetOptions(
      BuildContext context,
      List<Cards> cartItems,
      List<Cards> favoriteItems,
      List<Cards> orderItems,
      Function(Cards) addItemToCart,
      Function(Cards) addItemToFavorites,
      Function(Cards) removeItemFromCart,
      Function(Cards) removeItemFromFavorites,
      VoidCallback placeOrder) => <Widget>[
    PageMain(addItemToCart: addItemToCart, addItemToFavorites: addItemToFavorites),
    CartPage(cartItems: cartItems, removeItemFromCart: removeItemFromCart),
    FavoritesPage(favoriteItems: favoriteItems, removeItemFromFavorites: removeItemFromFavorites),
    ProfilePage(cartItems: cartItems, placeOrder: placeOrder),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _addItemToCart(Cards item) {
    setState(() {
      _cartItems.add(item);
    });
  }

  void _addItemToFavorites(Cards item) {
    setState(() {
      _favoriteItems.add(item);
    });
  }

  void _removeItemFromCart(Cards item) {
    setState(() {
      _cartItems.remove(item);
    });
  }

  void _removeItemFromFavorites(Cards item) {
    setState(() {
      _favoriteItems.remove(item);
    });
  }

  void _placeOrder() {
    setState(() {
      _orderItems = List.from(_cartItems);
      _cartItems.clear();
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OrderPage(orderItems: _orderItems)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions(
            context,
            _cartItems,
            _favoriteItems,
            _orderItems,
            _addItemToCart,
            _addItemToFavorites,
            _removeItemFromCart,
            _removeItemFromFavorites,
            _placeOrder).elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
