import 'package:car_app/features/cart/cart_provider.dart';
import 'package:car_app/features/data/cars_catalog_screen.dart';
import 'package:car_app/features/home/data_provider.dart';
import 'package:car_app/features/home/home_screen.dart';
import 'package:car_app/features/home/provider/cars_provider.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const CarApp());
}

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CarsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        )
      ],
      child: const MaterialApp(
        home: CarsCatalogScreen(),
      ),
    );
  }
}
