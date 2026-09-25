import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomTabWrap extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const BottomTabWrap({
    super.key,
    required this.navigationShell,
  });

  void _onTap(int index) {
    // Berpindah tab dan mempertahankan riwayat navigasi tab tersebut
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell, // Menampilkan halaman tab yang aktif
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _onTap,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search_outlined),
            selectedIcon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_outline),
            selectedIcon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}