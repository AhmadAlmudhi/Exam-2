import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../models/restaurant.dart';

class Time extends StatelessWidget {
  const Time({
    super.key,
    required this.res,
  });

  final Restaurant res;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              res.status,
              style: TextStyle(color: Colors.green.shade700),
            ),
            const SizedBox(width: 8),
            Text("Closes ${res.closesAt}"),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: MaterialStatePropertyAll(mainColor),
          ),
          child: const Text("Working time"),
        )
      ],
    );
  }
}
