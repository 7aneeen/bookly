import 'package:booklyapp/features/home/presentation/views/widgets/carousel_slider.dart';
import 'package:booklyapp/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Carouselslider(),
    );
  }
}
// custom appbar