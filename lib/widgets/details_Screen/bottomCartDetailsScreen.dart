import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';
import 'package:movies_app/widgets/details_Screen/imageWithBookMark.dart';

class BottomCartDetailsScreen extends StatelessWidget {
  const BottomCartDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      // height: height * 0.01,
      width: width * 0.25,
      color: const Color(0xff343534),
      child: Column(
        children: [
          BookMarkImage(
            selectedToWatchList: false,
            imageHeight: height * 0.16,
            imagewidth: width * 0.25,
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.015),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '⭐ 7.7',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  "Dora",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: AppColors.whiteColor,
                      ),
                ),
                Text(
                  '2019 PG · 1h 42m',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 8),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
