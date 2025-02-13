import 'package:flutter/material.dart';

enum CarFilters {
  allCars,
  familyCars,
  cheapCars,
  luxuryCars,
  sportCars,
  popularCars,
}

extension CarFiltersExtension on CarFilters {
  Color get getColor {
    switch (this) {
      case CarFilters.allCars:
        return Colors.grey;
      case CarFilters.cheapCars:
        return Color(0xffF6F6F6);
      case CarFilters.familyCars:
        return Color(0xffFCC21B);
      case CarFilters.luxuryCars:
        return Colors.red;
      case CarFilters.popularCars:
        return Colors.blue;
      case CarFilters.sportCars:
        return Colors.black;
      default:
        return Colors.pink;
    }
  }

  String get category {
    switch (this) {
      case CarFilters.allCars:
        return 'All';
      case CarFilters.cheapCars:
        return 'Cheap';
      case CarFilters.familyCars:
        return 'Family';
      case CarFilters.luxuryCars:
        return 'Luxury';
      case CarFilters.popularCars:
        return 'Popular';
      case CarFilters.sportCars:
        return 'Sport';
      default:
        return 'Other';
    }
  }
}
