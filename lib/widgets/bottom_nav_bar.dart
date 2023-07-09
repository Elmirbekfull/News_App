import 'package:flutter/material.dart';
import 'package:news_app/screens/discover_screen.dart';
import 'package:news_app/screens/home_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
  }): super(key: key);
  
  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [
        BottomNavigationBarItem
        (icon: Container(
          margin: const EdgeInsets.only(left: 50),
          child: IconButton(
            onPressed: (){
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
           icon: const Icon(Icons.home)),
        ),
         label: "Домой"
         ),
         BottomNavigationBarItem
        (icon: IconButton(
          onPressed: (){
            Navigator.pushNamed(context, DiscoverScreen.routeName);
          },
         icon: const Icon(Icons.search)),
         label: "Поиск"
         ),
         BottomNavigationBarItem
        (icon: Container(
          padding: const EdgeInsets.only(right: 50),
          child: IconButton(
            onPressed: (){
              print("Экран профился пока нет");
              // Navigator.pushNamed(context, ArticleScreen.routeName);
            },
           icon: const Icon(Icons.person)),
        ),
         label: "Профиль"
         ),
    ]);
  }
}