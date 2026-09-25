import 'package:cineflat/presentation/pages/widget/movieCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Slidable(
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          print('Event: Tombol Hapus Diklik');
                        },
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Hapus',
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(5),
                          topRight: Radius.circular(5)
                        ),
                      )
                    ]
                  ),
                  child: MovieCard(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
