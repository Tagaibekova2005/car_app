import 'package:car_app/core/data/car_model.dart';
import 'package:car_app/core/enum/car_filters.dart';
import 'package:flutter/material.dart';
import 'package:car_app/core/data/cars_data.dart' as data;

class CarsProvider extends ChangeNotifier {
  List<CarModel> currentList = data.list;

  void showFamilyCars() {
    List<CarModel> faimlyCars = [];

    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.familyCars) {
        faimlyCars.add(data.list[i]);
      }
      currentList = faimlyCars;
      notifyListeners();
    }
  }

  void showCheapCars() {
    List<CarModel> list = [];

    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.cheapCars) {
        list.add(data.list[i]);
      }

      currentList = list;
      notifyListeners();
    }
  }

  void showLuxuryCars() {
    List<CarModel> list = [];

    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.luxuryCars) {
        list.add(data.list[i]);
      }

      currentList = list;
      notifyListeners();
    }
  }

  void showSportCars() {
    List<CarModel> list = [];

    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.sportCars) {
        list.add(data.list[i]);
      }

      currentList = list;
      notifyListeners();
    }
  }

  void showPopularCars() {
    List<CarModel> list = [];

    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.popularCars) {
        list.add(data.list[i]);
      }

      currentList = list;
      notifyListeners();
    }
  }

  void showAllCars() {}
}
