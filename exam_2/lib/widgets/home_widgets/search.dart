import 'package:flutter/material.dart';

import '../../consts/colors.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          cursorColor: mainColor,
          decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 12, color: Colors.grey.shade400),
            hintText: "Search for Dishes, Restaurants and Reservations",
            prefixIconColor: mainColor,
            prefixIcon: const Icon(Icons.search),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
          ),
        ),
      ),
    );
  }
}
