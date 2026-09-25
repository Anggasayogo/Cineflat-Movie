import 'package:cineflat/presentation/pages/widget/movieCard.dart';
import 'package:cineflat/presentation/pages/widget/popularMovieCard.dart';
import 'package:cineflat/presentation/pages/widget/topRatedMovieCard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Text("Popular Movie"),
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
                Text("Top Rated"),
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
                Text("Now Playing"),
                MovieCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
