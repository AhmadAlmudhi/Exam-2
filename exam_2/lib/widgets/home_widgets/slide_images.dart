import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SlideImages extends StatelessWidget {
  const SlideImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 120,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: ImageSlideshow(
            indicatorBackgroundColor: Colors.transparent,
            indicatorColor: Colors.transparent,
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ6ne4DKB0Lgo2w8hWuD_A5mznuT_j71EoBw&usqp=CAU',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ6ne4DKB0Lgo2w8hWuD_A5mznuT_j71EoBw&usqp=CAU',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ6ne4DKB0Lgo2w8hWuD_A5mznuT_j71EoBw&usqp=CAU',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
