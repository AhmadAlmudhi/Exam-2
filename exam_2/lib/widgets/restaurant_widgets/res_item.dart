import 'package:exam_2/screens/item_screen.dart';
import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../models/item.dart';

class ResItem extends StatelessWidget {
  const ResItem({
    super.key,
    required this.item,
    required this.update,
  });

  final Item item;
  final Function() update;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ItemScreen(item: item)),
        ).then((value) => update.call());
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.network(item.image),
            title: Text(item.name),
            subtitle: Column(
              children: [
                Row(
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
                      "(${item.ratingsCount})",
                      style: const TextStyle(color: Colors.amber),
                    ),
                  ],
                )
              ],
            ),
            trailing: Icon(
              Icons.favorite_border,
              color: mainColor,
            ),
          ),
        ),
      ),
    );
  }
}
