import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:instaclone/config/config.dart';

class PostSlider extends StatelessWidget {
  Function setSliderLabel;

  PostSlider(this.setSliderLabel);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        onPageChanged: (index, reason) {
          setSliderLabel(index);
        },
        aspectRatio: 1.2,
        enlargeCenterPage: false,
        scrollDirection: Axis.horizontal,
        viewportFraction: 1.0,
        autoPlay: true,
      ),
      items: imageData()
          .map((item) => Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    item,
                    fit: BoxFit.fill,
                    width: 1000,
                  ),
                ),
              ))
          .toList(),
    );
  }
}
