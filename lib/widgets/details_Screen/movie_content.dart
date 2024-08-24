import 'package:flutter/material.dart';
import 'package:movies_app/widgets/details_Screen/imageWithBookMark.dart';

import '../../constants/color.dart';

class Movie_content extends StatelessWidget {
  bool selectedToWatchList;

  Movie_content({super.key, required this.selectedToWatchList});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: BookMarkImage(
              selectedToWatchList: false,
              imageHeight: height * 0.23,
              imagewidth: width * 0.34,
            )),
        SizedBox(
          width: width * 0.04,
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: height * 0.04,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: width * 0.03),
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.045, vertical: width * 0.015),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.transparent,
                            border: Border.all(color: AppColors.grayColor)),
                        child: Text(
                          'Action',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Text(
                'Having spent most of her life exploring the jungle, nothing could prepare Dora for her most'
                ' dangerous adventure yet: high school.',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColors.grayColor),
                maxLines: 4,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text('⭐ 7.7', style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
        )
      ],
    );
  }
}
