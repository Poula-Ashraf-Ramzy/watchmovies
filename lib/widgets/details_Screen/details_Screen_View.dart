// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:movies_app/constants/color.dart';
import 'package:movies_app/viewModel/detailsScreen.dart';
import 'package:movies_app/widgets/details_Screen/TopVideoTrailer.dart';
import 'package:movies_app/widgets/details_Screen/bottomCartDetailsScreen.dart';
import 'package:movies_app/widgets/details_Screen/movieUpperContent.dart';

class DetailsScreenView extends StatefulWidget {
  int movieId;
  String movieTitle;
  DetailsScreenView({
    super.key,
    required this.movieId,
    required this.movieTitle,
  });

  @override
  State<DetailsScreenView> createState() => _DetailsScreenViewState();
}

class _DetailsScreenViewState extends State<DetailsScreenView> {
  DetailsScreenViewModel viewModel = DetailsScreenViewModel();
  @override
  void initState() {
    super.initState();
    viewModel.getMovieDetails(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.movieTitle,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: ChangeNotifierProvider(
        create: (context) => viewModel,
        child: Consumer<DetailsScreenViewModel>(
          builder: (context, viewModel, child) {
            if (viewModel.errMessage != null) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      viewModel.errMessage!,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    MaterialButton(
                      onPressed: () {
                        viewModel.getMovieDetails(widget.movieId);
                      },
                      child: Text(
                        "Try Again...",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    )
                  ],
                ),
              );
            } else if (viewModel.movieDetails == null) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.goldColor,
                ),
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TopVideoTrailer(
                      imagePath:
                          'https://image.tmdb.org/t/p/w500${viewModel.movieDetails!.backdropPath!}',
                    ),
                    SizedBox(
                      height: height * 0.009,
                    ),
                    MovieUpperContent(
                      movieDetails: viewModel.movieDetails!,
                      movieId:widget.movieId
                    ),
                    Container(
                      color: const Color(0xff282A28),
                      margin: EdgeInsets.only(
                        top: width * 0.05,
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: width * 0.035,
                        horizontal: width * 0.035,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "More like this",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SizedBox(
                            height: height * 0.278,
                            child: ListView.separated(
                              separatorBuilder: (context, index) => SizedBox(
                                width: width * 0.04,
                              ),
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return BottomCartDetailsScreen(
                                  movieDetails: viewModel.movieDetails!,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
