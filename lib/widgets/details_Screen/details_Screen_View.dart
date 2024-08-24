import 'package:flutter/material.dart';
import 'package:movies_app/widgets/details_Screen/TopVideoTrailer.dart';
import 'package:movies_app/widgets/details_Screen/bottomCartDetailsScreen.dart';
import 'package:movies_app/widgets/details_Screen/movieUpperContent.dart';

class DetailsScreenView extends StatelessWidget {
  const DetailsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movie Name',
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TopVideoTrailer(
              imagePath:
                  "https://connecticutlifestyles.com/wp-content/uploads/2019/03/dora-lostcity-ofgold-1.jpg",
            ),
            SizedBox(
              height: height * 0.009,
            ),
            MovieUpperContent(
              movieName: 'Dora and the Lost City of Gold',
              movieDate: '2019 PG · 1h 42m',
            ),
            Container(
              color: const Color(0xff282A28),
              margin: EdgeInsets.only(
                top: width * 0.05,
              ),
              padding: EdgeInsets.symmetric(
                  vertical: width * 0.035, horizontal: width * 0.035),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "More like this",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Container(
                    height: height * 0.24,
                    margin: EdgeInsets.only(top: width * 0.02),
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: width * 0.04,
                      ),
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const BottomCartDetailsScreen();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
