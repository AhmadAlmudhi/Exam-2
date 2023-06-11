import 'package:flutter/material.dart';

import '../../models/item.dart';

class Quantity extends StatelessWidget {
  const Quantity({
    super.key,
    required this.item,
    required this.update,
  });

  final Item item;
  final Function() update;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Quantity",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        if (item.quanttity > 1) {
                          item.quanttity--;
                          update.call();
                        }
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 32),
                    child: Text(
                      "${item.quanttity}",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        item.quanttity++;
                        update.call();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "+",
                          style: TextStyle(
                              fontSize: 20, color: Colors.red.shade700),
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
