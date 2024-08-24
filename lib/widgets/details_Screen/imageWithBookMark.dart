import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';

class BookMarkImage extends StatelessWidget {
  bool selectedToWatchList;
  double imageHeight;
  double imagewidth;

  BookMarkImage({
    super.key,
    required this.selectedToWatchList,
    required this.imageHeight,
    required this.imagewidth,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          "assets/images/Image.png",
          fit: BoxFit.fill,
          height: imageHeight,
          width: imagewidth,
        ),
        Positioned(
          top: -5,
          left: -9,
          child: Icon(
            Icons.bookmark,
            color: selectedToWatchList == false
                ? const Color(0xff514F4F)
                : AppColors.goldColor,
            size: 45,
          ),
        ),
        Positioned(
          top: width * 0.016,
          left: width * 0.011,
          child: Icon(
            selectedToWatchList == false ? Icons.add : Icons.check,
            color: AppColors.whiteColor,
            size: 20,
          ),
        ),
      ],
    );
  }
}
