import 'package:cp_ecommerce/models/shop.dart';
import 'package:cp_ecommerce/pages/cart_page.dart';
import 'package:cp_ecommerce/pages/intro_page.dart';
import 'package:cp_ecommerce/pages/shop_page.dart';
import 'package:cp_ecommerce/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Shop(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CP Ecommerce',
      home: const IntroPage(),
      theme: lightMode,
      debugShowCheckedModeBanner: false,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
