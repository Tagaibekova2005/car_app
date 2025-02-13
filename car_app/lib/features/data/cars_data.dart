import 'package:flutter/material.dart';

class CarsData {
  final List<Car> cars = [
    Car(
        brand: 'Toyota',
        model: 'Camry 70',
        year: 2017,
        image:
            'https://avatars.mds.yandex.net/get-verba/1030388/2a000001786ab6d740f53ca6259ae80885c7/auto_main',
        colors: Colors.black),
    Car(
        brand: 'Honda',
        model: 'Fit',
        year: 2004,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-85nKU78gLKih2FRy_wFaGXpmN5Vg27LTSQ&s',
        colors: Colors.red),
    Car(
        brand: 'Huyndai',
        model: 'Sonata',
        year: 2019,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRii-Hd1xqnCvzQ2wX1y_mPWQ2KanMKbZd9GA&s',
        colors: Colors.blue),
    Car(
        brand: 'Lexus',
        model: 'RX 350',
        year: 2017,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6EZwxkMcR2_sv728Yzv-mNq1andhUQjGv6Q&s',
        colors: Colors.brown),
    Car(
        brand: 'BMW',
        model: 'M3',
        year: 2020,
        image:
            'https://avatars.mds.yandex.net/get-verba/3587101/2a0000018fcdb3d417da06e7e7e55baa0053/cattouchretcr',
        colors: Colors.green),
  ];
}

class Car {
  final String brand;
  final String model;
  final int year;
  final String image;
  final Color colors;

  Car(
      {required this.brand,
      required this.model,
      required this.year,
      required this.image,
      required this.colors});
}
