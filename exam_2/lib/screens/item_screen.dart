import 'package:exam_2/consts/colors.dart';
import 'package:exam_2/widgets/item_widgets/item_header.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';
import '../services/data.dart';
import '../widgets/item_widgets/price_and_rating.dart';
import '../widgets/item_widgets/quantity.dart';
import '../widgets/item_widgets/time.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key, required this.item});

  final Item item;

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemHeader(item: widget.item),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                PriceAndRating(item: widget.item),
                Time(item: widget.item),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(widget.item.description),
                )
              ],
            ),
          ),
          Quantity(
            item: widget.item,
            update: () {
              setState(() {});
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(mainColor)),
              onPressed: () {
                cart.add(widget.item);
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "ADD TO CART",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Text(
                    "${widget.item.price * widget.item.quanttity} SR",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
