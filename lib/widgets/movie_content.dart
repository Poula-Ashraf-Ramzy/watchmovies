import 'package:flutter/material.dart';

import '../constants/color.dart';


class Movie_content extends StatelessWidget {
  const Movie_content({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Stack(children:[
          Image.asset("assets/images/Image.png"),
          Positioned(
            top: 0,
            left:0,
            child: Icon(Icons.bookmark,
              color: AppColors.grayColor,
              size: 40,),
          ),
          Positioned(
              top: 7,
              left: 9,
              child: Icon(Icons.add,
                color: AppColors.whiteColor,
                size: 20,
              ))
        ]),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    MaterialButton(
                      minWidth: 25,
                      shape: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.grayColor
                          )
                      ),
                      onPressed: () {},
                      child: Text('Action',style: Theme.of(context).textTheme.titleSmall),
                    ),
                    SizedBox(width: 8),
                    MaterialButton(
                      minWidth: 25,
                      shape: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.grayColor
                          )
                      ),
                      onPressed: () {},
                      child: Text('Action',style: Theme.of(context).textTheme.titleSmall),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    MaterialButton(
                      minWidth: 25,
                      shape: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.grayColor
                          )
                      ),
                      onPressed: () {},
                      child: Text('Action',style: Theme.of(context).textTheme.titleSmall),
                    ),

                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  'Having spent most of her life exploring the jungle, nothing could prepare Dora for her most'
                      ' dangerous adventure yet: high school.',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.grayColor),
                  maxLines: 4,

                ),
                SizedBox(
                  height: 10,

                ),
                Text(
                    '⭐ 7.7',
                    style: Theme.of(context).textTheme.titleLarge
                ),

              ],
            ),
          ),
        )

      ],
    ) ;
  }
}
