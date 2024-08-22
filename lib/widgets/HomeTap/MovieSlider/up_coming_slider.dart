import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';

class upComingSlider extends StatelessWidget {
  String label;
  String image;

  upComingSlider({super.key, required this.label, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 250,
          width: 140,
          child: Container(
            color: AppColors.graylightColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Text(
                    label,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: 20,
                      itemBuilder: (contex, Index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: SizedBox(
                              child: Stack(
                                children: [
                                  Container(
                                    color: Colors.white,
                                    height: 200,
                                    width: 140,
                                    child: Image.asset(
                                      image,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Image.asset("assets/images/bookmark.png",
                                      color: AppColors.grayColor),
                                  const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
