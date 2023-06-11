import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../models/restaurant.dart';

class NameAndRating extends StatelessWidget {
  const NameAndRating({
    super.key,
    required this.res,
  });

  final Restaurant res;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          res.name,
          style: TextStyle(fontSize: 20, color: mainColor),
        ),
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            Text(" ${res.rating} "),
            Text(
              "(${res.ratingsCount})",
              style: const TextStyle(color: Colors.amber),
            ),
          ],
        )
      ],
    );
  }
}
