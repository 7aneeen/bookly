import 'package:booklyapp/core/asset.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';

class Carouselslider extends StatefulWidget {
  const Carouselslider({super.key});

  @override
  State<Carouselslider> createState() => _CarouselsliderState();
}

class _CarouselsliderState extends State<Carouselslider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AssetsData.testImage)),
          ),
        ),
        Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AssetsData.book1)),
          ),
        ),
        Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.red,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AssetsData.book2))),
        ),
        Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.red,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AssetsData.book3))),
        ),
      ],
      options: CarouselOptions(
        height: 300,
        aspectRatio: 16 / 10,
        viewportFraction: .6,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.easeInOutBack,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
