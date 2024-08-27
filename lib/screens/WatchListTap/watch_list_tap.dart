// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';
import 'package:movies_app/screens/SearchTap/models/movie.dart';
import 'package:movies_app/widgets/watchlist/MovieCard.dart';

class WatchListTap extends StatefulWidget {
  @override
  State<WatchListTap> createState() => _WatchListTapState();
}

class _WatchListTapState extends State<WatchListTap> {
  List<Movie> movies = [
    Movie(
      title: 'The Shawshank Redemption',
      year: '1994',
      actors: 'Tim Robbins, Morgan Freeman',
      imageUrl: '/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg',
    ),
    Movie(
      title: 'The Godfather',
      year: '1972',
      actors: 'Marlon Brando, Al Pacino',
      imageUrl: '/rPdtLWNsZmAtoZl9PK7S2wE3qiS.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Watch List",
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context,index)=> const Divider(thickness: 1,),
        itemCount: movies.length,
        padding: EdgeInsets.only(
                  top: width*0.04,
                  bottom: width*0.04,
                  right: width*0.04,
                  left: width*0.04,
                ),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              MovieCard(movie: movies[index]),
              Positioned(
                top: height * 0.005,
                left: -4,
                child: const ImageIcon(
                  AssetImage('assets/images/bookmark.png'),
                  color: AppColors.goldColor,
                  size: 35,
                ),
              ),
              Positioned(
                top: height * 0.010,
                left: width * 0.010,
                child: const Icon(
                  Icons.check,
                  size: 18,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
