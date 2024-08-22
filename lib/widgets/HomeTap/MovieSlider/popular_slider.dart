import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';

class popularSlider extends StatelessWidget {
  String image;

  popularSlider({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: CarouselSlider.builder(
          itemCount: 20,
          options: CarouselOptions(
              aspectRatio: 1.5,
              height: MediaQuery.of(context).size.height * 0.3,
              autoPlay: true,
              viewportFraction: 1,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(seconds: 2)),
          itemBuilder: (context, itemIndex, pageView) {
            return Container(
              color: AppColors.graylightColor,
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(image, fit: BoxFit.cover),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 150,
                        width: 140,
                        child: Image.asset(
                          image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.transparent
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                // Play Button
                const Positioned(
                  top: 80,
                  left: 165,
                  child: Icon(
                    Icons.play_circle_outline,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
                // Movie Info
                const Positioned(
                  bottom: 20,
                  left: 10,
                  right: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dora and the Lost City of Gold",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "2019  PG-13  2h 7m",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            );
          },
        ));
  }
}
