import 'package:flutter/material.dart';

import '../../models/item.dart';

class ItemRating extends StatelessWidget {
  const ItemRating({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Text("${item.rating}"),
        const SizedBox(
          width: 8,
        ),
        Text(
          "${item.ratingsCount} Rating",
          style: const TextStyle(color: Colors.amber),
        ),
      ],
    );
  }
}
