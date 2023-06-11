import 'package:exam_2/consts/colors.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';
import '../services/data.dart';
import '../widgets/cart_widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey.shade100,
        title: Text(
          "Cart",
          style: TextStyle(color: mainColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          shrinkWrap: true,
          children: [
            const Text(
              "Items",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            for (Item item in cart)
              CartItem(
                item: item,
                update: () {
                  setState(() {});
                },
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(mainColor)),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Next",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
