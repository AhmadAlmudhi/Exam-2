import 'package:flutter/material.dart';

import '../screens/cart_screen.dart';
import '../services/data.dart';

class CartButton extends StatefulWidget {
  const CartButton({
    super.key,
    required this.update,
  });

  final Function() update;

  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: cart.isNotEmpty,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 30,
        child: FloatingActionButton(
          elevation: 5,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartScreen()),
            ).then((value) {
              setState(() {
                widget.update.call();
              });
            });
          },
          backgroundColor: Colors.orange.shade700,
          child: const Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
