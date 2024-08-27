import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';

class BookMarkImage extends StatelessWidget {
  bool selectedToWatchList;
  double imageHeight;
  double imagewidth;
  String imagepath;
  BookMarkImage({
    super.key,
    required this.selectedToWatchList,
    required this.imageHeight,
    required this.imagewidth,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.network(
          'https://image.tmdb.org/t/p/w500$imagepath',
          fit: BoxFit.fill,
          height: imageHeight,
          width: imagewidth,
        ),
        Positioned(
          top: -7,
          left: -11,
          child: Icon(
            Icons.bookmark,
            color: selectedToWatchList == false
                ? const Color(0xff514F4F)
                : AppColors.goldColor,
            size: 45,
          ),
        ),
        Positioned(
          top: width * 0.009,
          left: width * 0.005,
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
