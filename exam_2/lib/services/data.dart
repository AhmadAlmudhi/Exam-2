import 'package:exam_2/models/item.dart';
import 'package:exam_2/models/restaurant.dart';

List<Item> cart = [];

List<Restaurant> restaurants = [
  Restaurant(
    name: "baskin Robbins | باسكن روبنز",
    distance: 1.00,
    rating: 4.5,
    ratingsCount: 1943,
    profileImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJl4JxotFAp0v5Um1m8Ur5LGMfFfr1NfobEw&usqp=CAU",
    headerImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ_cFnTy1n0sKj4-scimbE-e5xuMTlhrbNsg&usqp=CAU",
    status: "open",
    closesAt: "11:59 PM",
    menu: [
      Item(
          name: "Single junior Scoop Cup",
          description: "1 Scoop ice cream cup 2.5 oz",
          rating: 4.2,
          ratingsCount: 212,
          image:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJl4JxotFAp0v5Um1m8Ur5LGMfFfr1NfobEw&usqp=CAU",
          timeToMake: 30,
          price: 10.0,
          quanttity: 1),
      Item(
          name: "Double junior Scoops Cup",
          description: "2 Scoops ice cream cup 4 oz",
          rating: 4.2,
          ratingsCount: 212,
          image:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJl4JxotFAp0v5Um1m8Ur5LGMfFfr1NfobEw&usqp=CAU",
          timeToMake: 30,
          price: 20.0,
          quanttity: 1),
    ],
  ),
  Restaurant(
    name: "baskin Robbins | باسكن روبنز",
    distance: 1.00,
    rating: 4.5,
    ratingsCount: 1943,
    profileImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJl4JxotFAp0v5Um1m8Ur5LGMfFfr1NfobEw&usqp=CAU",
    headerImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ_cFnTy1n0sKj4-scimbE-e5xuMTlhrbNsg&usqp=CAU",
    status: "open",
    closesAt: "11:59 PM",
    menu: [
      Item(
          name: "Single junior Scoop Cup",
          description: "1 Scoop ice cream cup 2.5 oz",
          rating: 4.2,
          ratingsCount: 212,
          image:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJl4JxotFAp0v5Um1m8Ur5LGMfFfr1NfobEw&usqp=CAU",
          timeToMake: 30,
          price: 10.0,
          quanttity: 1),
      Item(
          name: "Double junior Scoops Cup",
          description: "2 Scoops ice cream cup 4 oz",
          rating: 4.2,
          ratingsCount: 212,
          image:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJl4JxotFAp0v5Um1m8Ur5LGMfFfr1NfobEw&usqp=CAU",
          timeToMake: 30,
          price: 20.0,
          quanttity: 1),
    ],
  )
];
