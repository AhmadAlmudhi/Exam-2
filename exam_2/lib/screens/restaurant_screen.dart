import 'package:exam_2/models/restaurant.dart';
import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/cart_button.dart';
import '../widgets/restaurant_widgets/header.dart';
import '../widgets/restaurant_widgets/name_and_rating.dart';
import '../widgets/restaurant_widgets/res_item.dart';
import '../widgets/restaurant_widgets/time.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key, required this.res});

  final Restaurant res;

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(res: widget.res),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    NameAndRating(res: widget.res),
                    Time(res: widget.res),
                    for (Item item in widget.res.menu)
                      ResItem(
                        item: item,
                        update: () {
                          setState(() {});
                        },
                      ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: CartButton(
                update: () {
                  setState(() {});
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
