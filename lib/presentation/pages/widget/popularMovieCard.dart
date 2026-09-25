import 'package:flutter/material.dart';

class PopularMovieCard extends StatelessWidget {
  const PopularMovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Image.asset(
          'assets/images/spiderman.png',
          width: 160,
          height: 230,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
