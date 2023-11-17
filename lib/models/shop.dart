import 'package:cp_ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //  products for sale

  final List<Product> _shop = [
    Product(
      name: "Glasses",
      price: 15.2,
      description:
          """Discover effortless style and clear vision with our chic glasses. Designed for comfort and functionality, these glasses feature sleek frames and high-quality lenses, perfect for everyday wear.""",
      imagePath: 'assets/img/1.jpg',
    ),
    Product(
      name: "Watches",
      price: 99.9,
      description:
          "Effortlessly stylish, our watch blends timeless design with durability. With its [mention key feature] and [mention material], this accessory adds sophistication to any look.",
      imagePath: 'assets/img/2.jpg',
    ),
    Product(
      name: "Hoodies",
      price: 99.9,
      description:
          """Stay cozy in style with our classic hoodie. Crafted for comfort, this wardrobe essential boasts a soft, warm fabric and a versatile design suitable for any occasion. Available in various colors, this hoodie is a timeless addition to your collection.""",
      imagePath: 'assets/img/3.jpg',
    ),
    Product(
      name: "Shoes",
      price: 99.9,
      description:
          """Effortlessly stylish and comfortable, our shoes blend quality materials with a sleek design. Perfect for any occasion, these shoes are a must-have addition to your collection.""",
      imagePath: 'assets/img/4.jpg',
    ),
  ];
  // user cart
  final List<Product> _cart = [];

  // get product list

  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item to cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
