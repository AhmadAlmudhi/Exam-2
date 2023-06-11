import 'package:exam_2/models/item.dart';
import 'package:flutter/material.dart';

class ItemHeader extends StatelessWidget {
  const ItemHeader({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          item.image,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                heroTag: null,
                backgroundColor: const Color.fromARGB(100, 0, 0, 0),
                elevation: 0,
                mini: true,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios_outlined),
              ),
              Row(
                children: [
                  FloatingActionButton(
                    heroTag: null,
                    backgroundColor: const Color.fromARGB(100, 0, 0, 0),
                    elevation: 0,
                    mini: true,
                    onPressed: () {},
                    child: const Icon(Icons.ios_share_outlined),
                  ),
                  FloatingActionButton(
                    heroTag: null,
                    backgroundColor: const Color.fromARGB(100, 0, 0, 0),
                    elevation: 0,
                    mini: true,
                    onPressed: () {},
                    child: const Icon(Icons.favorite_border),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
