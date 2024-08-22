import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';

class TopRatedSlider extends StatelessWidget {
  String label;
  String movieName;
  String realse;
  String image;
  String rated;

  TopRatedSlider(
      {super.key,
      required this.label,
      required this.movieName,
      required this.realse,
      required this.rated,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.37,
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.24,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
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
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Image.asset("assets/images/star.png"),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        rated,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w100),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    movieName,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w100),
                                  ),
                                  Text(realse,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(fontSize: 12)),
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
