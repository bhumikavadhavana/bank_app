import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<String> imagelist = [
    "assets/images/b1.png",
    "assets/images/b2.png",
    "assets/images/b3.png",
    "assets/images/b4.png",
  ];

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacementNamed('HomePage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
          ),
          items: imagelist.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  // height: 900,
                  // width: double.infinity,
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}




