import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../models/item.dart';

class Time extends StatelessWidget {
  const Time({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(48, 4, 0, 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.access_time_filled_sharp,
                    size: 20,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Preparation Time',
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 8),
                child: Text(
                  '${item.timeToMake} mins',
                  style: TextStyle(color: mainColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
