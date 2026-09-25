import 'package:flutter/material.dart';

class TopRatedMovieCard extends StatelessWidget {
  const TopRatedMovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize:
              MainAxisSize.min, // Menyesuaikan tinggi dengan isi konten
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/spiderman.png',
                width: double.infinity, // Mengisi seluruh lebar Container (180)
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 8), // Jarak vertikal ke judul
                  const Text(
                    "Spiderman No Way Home",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 4), // Jarak vertikal ke deskripsi
                  const Text(
                    "In the film, Peter asks Dr. Stephen Strange (Cumberbatch) to use magic.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
