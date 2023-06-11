import 'package:exam_2/models/restaurant.dart';
import 'package:exam_2/screens/restaurant_screen.dart';
import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
    required this.res,
    required this.update,
  });

  final Restaurant res;
  final Function() update;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RestaurantScreen(
              res: res,
            ),
          ),
        ).then((value) => update.call());
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Card(
                elevation: 1,
                child: Column(
                  children: [
                    Image.network(
                      res.headerImage,
                      height: 120,
                      width: 350,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      color: Colors.white,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(res.profileImage),
                        ),
                        title: Text(res.name),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_sharp,
                              color: Colors.grey.shade800,
                            ),
                            Text("${res.distance} km"),
                            const SizedBox(width: 8),
                            Icon(
                              Icons.star,
                              color: Colors.purple.shade200,
                            ),
                            Text("${res.rating} (${res.ratingsCount})"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
