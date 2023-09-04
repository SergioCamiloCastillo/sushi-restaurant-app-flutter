import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant_app/components/button.dart';
import 'package:sushi_restaurant_app/models/food.dart';
import 'package:sushi_restaurant_app/models/shop.dart';
import 'package:sushi_restaurant_app/theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  void removeFromCart(FoodModel food, BuildContext context) {
    final shop = context.read<Shop>();
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Text('Mi carrito de compras'),
          elevation: 0,
          backgroundColor: primaryColor,
        ),
        body: Container(
          decoration: BoxDecoration(
              color: secondaryColor, borderRadius: BorderRadius.circular(8)),
          margin: EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    final FoodModel food = value.cart[index];
                    final String foodName = food.name;
                    final String foodPrice = food.price;
                    return ListTile(
                      title: Text(
                        foodName,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(foodPrice,
                          style: TextStyle(
                              color: Colors.grey[200],
                              fontWeight: FontWeight.bold)),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.grey[300],
                        ),
                        onPressed: () => removeFromCart(food, context),
                      ),
                    );
                  },
                ),
              ),
              //boton de pago
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: MyButton(
                  text: "Pague ahora",
                  onTap: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
