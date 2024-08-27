import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:movies_app/constants/color.dart';
import 'package:movies_app/screens/SearchTap/models/movie.dart';
import 'package:movies_app/screens/SearchTap/services/api_service.dart';
import 'package:movies_app/widgets/watchlist/MovieCard.dart';

class SearchTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.07,
        ),
        child: Column(
          children: [
            Center(
              child: ConstrainedBox(
                
                constraints: BoxConstraints(
                  
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                ),
                child: TypeAheadField<Movie>(
                  
                  textFieldConfiguration: TextFieldConfiguration(
                    style: const TextStyle(color: AppColors.whiteColor),
                    cursorColor: AppColors.whiteColor,
                    decoration: InputDecoration(
                      
                      prefixIcon:const Icon(
                        Icons.search,
                        color: AppColors.whiteColor,
                      ),
                      hintText: 'Search Movies...',
                      hintStyle: const TextStyle(color: AppColors.whiteColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: AppColors.whiteColor,
                          width: MediaQuery.of(context).size.width * 0.003,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: AppColors.whiteColor,
                          width: MediaQuery.of(context).size.width * 0.003,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: AppColors.whiteColor,
                          width: MediaQuery.of(context).size.width * 0.003,
                        ),
                      ),
                    ),
                  ),
                  suggestionsCallback: (query) async {
                    return await importMovieFromApi(query: query);
                  },
                  itemBuilder: (context, Movie movie) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.025,
                      ),
                      child: MovieCard(movie: movie),
                    );
                  },
                  onSuggestionSelected: (Movie movie) {
                    // Action when suggestion is selected
                  },
                  suggestionsBoxDecoration: SuggestionsBoxDecoration(
                    color: AppColors.primaryColor,
                    elevation: 0,
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.9,
                      maxHeight: MediaQuery.of(context).size.height * 0.80,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.3,

              ),
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
              child: ImageIcon(
                const AssetImage("assets/images/Icon_movies.png"),
                size: MediaQuery.of(context).size.height * 0.15,
                color: AppColors.grayColor,
              ),
            ),
            Text('No movies found',style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppColors.describtionColor),),
          ],
        ),
      ),
    );
  }
}
