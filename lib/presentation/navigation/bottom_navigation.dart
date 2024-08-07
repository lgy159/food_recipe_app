import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesac_ton/presentation/home/home_screen.dart';
import 'package:sesac_ton/presentation/saved_recipes/saved_recipes_screen.dart';
import 'package:sesac_ton/presentation/saved_recipes/saved_recipes_view_model.dart';

import '../../data/repository/recipe_repository.dart';

class BottomNavigation extends StatefulWidget {
  final RecipeRepository recipeRepository;

  const BottomNavigation({super.key, required this.recipeRepository});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 0;

  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysHide;

  final destination = [
    NavigationDestination(
      icon: Image.asset('assets/nav/home.png'),
      selectedIcon: Image.asset('assets/nav/home_selected.png'),
      label: 'home',
    ),
    NavigationDestination(
      icon: Image.asset('assets/nav/saved.png'),
      selectedIcon: Image.asset('assets/nav/saved_selected.png'),
      label: 'saved',
    ),
    NavigationDestination(
      icon: Image.asset('assets/nav/bell.png'),
      selectedIcon: Image.asset('assets/nav/bell_selected.png'),
      label: 'notifications',
    ),
    NavigationDestination(
      icon: Image.asset('assets/nav/profile.png'),
      selectedIcon: Image.asset('assets/nav/profile_selected.png'),
      label: 'profile',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const HomeScreen(),
        ChangeNotifierProvider<SavedRecipesViewModel>(
          create: (context) => SavedRecipesViewModel(widget.recipeRepository),
          child: const SavedRecipesScreen(),
        ),
        const Center(child: Text('Notifications')),
        const Center(child: Text('Profile')),
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        height: 58,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        destinations: destination,
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        indicatorColor: Colors.transparent,
        onDestinationSelected: (int index) {
          setState(
            () {
              currentPageIndex = index;
            },
          );
        },
      ),
    );
  }
}
