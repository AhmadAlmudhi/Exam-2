import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../models/item.dart';
import 'item_rating.dart';

class PriceAndRating extends StatelessWidget {
  const PriceAndRating({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${item.price} SR",
          style: TextStyle(
              color: mainColor, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [ItemRating(item: item)],
        )
      ],
    );
  }
}
