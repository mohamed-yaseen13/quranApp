import 'package:flutter/material.dart';
import 'package:quran_app/hadeeth_tap.dart';
import 'package:quran_app/quran_tap.dart';
import 'package:quran_app/sebha_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/mainback.jpg',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            'Quran',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColorLight,
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(
                () {},
              );
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 24), // Icon size
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 24),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 24),
                label: 'Profile',
              ),
            ],
            selectedFontSize: 12, // Adjust font size
            unselectedFontSize: 10,
            iconSize: 24, // Consistent icon size
          ),
        ),
        body: tabs[selectedIndex],
      ),
    ]);
  }

  List<Widget> tabs = [QuranTap(), HadeethTap(), SebhaTap()];
}
