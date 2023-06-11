import 'package:flutter/material.dart';

import '../../models/restaurant.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.res,
  });

  final Restaurant res;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(res.headerImage, fit: BoxFit.cover),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
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
                    child: const Icon(Icons.search),
                  ),
                  FloatingActionButton(
                    heroTag: null,
                    backgroundColor: const Color.fromARGB(100, 0, 0, 0),
                    elevation: 0,
                    mini: true,
                    onPressed: () {},
                    child: const Icon(Icons.ios_share_outlined),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(res.profileImage),
                radius: 35,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50, right: 16),
                child: Icon(
                  Icons.favorite_border,
                  size: 40,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
