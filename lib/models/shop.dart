import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/models/food.dart';

class Shop extends ChangeNotifier {
  final List<FoodModel> _foodMenu = [
    FoodModel('Sushi de salmón', "45.000", 'lib/images/sushi3.png', 4.4),
    FoodModel('Atún', "12.000", 'lib/images/rollo-de-sushi.png', 4.4)
  ];

  List<FoodModel> _cart = [];
  List<FoodModel> get foodMenu => _foodMenu;
  List<FoodModel> get cart => _cart;

  void addToCart(FoodModel foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(FoodModel food) {
    _cart.remove(food);
    notifyListeners();
  }
}
