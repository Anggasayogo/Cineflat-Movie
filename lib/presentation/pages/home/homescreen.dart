import 'package:cineflat/presentation/pages/widget/movieCard.dart';
import 'package:cineflat/presentation/pages/widget/popularMovieCard.dart';
import 'package:cineflat/presentation/pages/widget/topRatedMovieCard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          child: Row(
            children: [
              Text(
                "Cinebook Flutter",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Text(
                  "Popular Movie",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 5),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PopularMovieCard(),
                      PopularMovieCard(),
                      PopularMovieCard(),
                    ],
                  )
                ),
                SizedBox(height: 15),
                Text(
                  "Top Rated",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 5),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TopRatedMovieCard(),
                      TopRatedMovieCard(),
                      TopRatedMovieCard(),
                    ],
                  )
                ),
                SizedBox(height: 15),
                Text(
                  "Now Playing",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 5),
                MovieCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
