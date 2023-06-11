import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../models/item.dart';
import '../../services/data.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.item,
    required this.update,
  });

  final Item item;
  final Function() update;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${item.price} SR"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price ${item.price * item.quanttity} SR",
                    style: TextStyle(
                        color: mainColor, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            if (item.quanttity > 1) {
                              item.quanttity--;
                            } else {
                              cart.remove(item);
                            }
                            update.call();
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "-",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        child: Text(
                          "${item.quanttity}",
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            item.quanttity++;
                            update.call();
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "+",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.red.shade700),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
