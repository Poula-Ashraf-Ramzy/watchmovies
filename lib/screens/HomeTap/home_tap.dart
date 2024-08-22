import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';
import 'package:movies_app/widgets/HomeTap/MovieSlider/popular_slider.dart';
import 'package:movies_app/widgets/HomeTap/MovieSlider/top_rated_slider.dart';
import 'package:movies_app/widgets/HomeTap/MovieSlider/up_coming_slider.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => HomeTabState();
}

class HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 10,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: AppColors.primaryColor,
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    popularSlider(
                      image: "assets/images/van.png",
                      nameMovie: "Dora and the Lost City of Gold",
                      releaseTime: "2019  PG-13  2h 7m",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    upComingSlider(
                      label: "New Release",
                      image: "assets/images/van.png",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TopRatedSlider(
                      label: "Recommended",
                      image: "assets/images/van.png",
                      rated: "7.7",
                      movieName: "Van Gogh",
                      realse: "Time",
                    )
                  ],
                ))));
  }
}
