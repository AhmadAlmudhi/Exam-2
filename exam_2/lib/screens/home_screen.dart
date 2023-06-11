import 'package:exam_2/services/data.dart';
import 'package:flutter/material.dart';

import '../models/restaurant.dart';
import '../widgets/cart_button.dart';
import '../widgets/home_widgets/bar.dart';
import '../widgets/home_widgets/chefz_nearby_you.dart';
import '../widgets/home_widgets/restaurant_card.dart';
import '../widgets/home_widgets/search.dart';
import '../widgets/home_widgets/slide_images.dart';
import '../widgets/home_widgets/try_with_us.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              ListView(
                children: [
                  const Bar(),
                  const Search(),
                  const SlideImages(),
                  const TryWithUs(),
                  const ChefzNearbyYou(),
                  for (Restaurant res in restaurants)
                    RestaurantCard(
                      res: res,
                      update: () {
                        setState(() {});
                      },
                    ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
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
        ),
      ),
    );
  }
}
