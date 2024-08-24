// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';
import 'package:movies_app/widgets/details_Screen/movie_content.dart';

class MovieUpperContent extends StatelessWidget {
  String movieName;
  String movieDate;

  MovieUpperContent({
    super.key,
    required this.movieName,
    required this.movieDate,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            movieName,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Text(
            movieDate,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: AppColors.grayColor),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Movie_content(
            selectedToWatchList: false,
          ),
        ],
      ),
    );
  }
}
