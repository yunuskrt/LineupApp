import 'package:flutter/material.dart';
import 'package:lineup/util/colors.dart';
import 'screens/home_screen.dart';
import 'screens/game_screen.dart';
import 'screens/page2_screen.dart';
import 'screens/deneme_screen.dart';
import 'package:lineup/components/lineup_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Page Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const GameScreen(),
    const Page2Screen(),
    const LineupPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.primary,
          centerTitle: true,
          title: const Text(
            'LINEUP',
            style: TextStyle(
              letterSpacing: 8,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          )),
      body: _screens[_currentIndex],
      drawer: Drawer(
        backgroundColor: AppColors.primary,
        width: MediaQuery.of(context).size.width * 0.7,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: AppColors.primaryGradient,
              ),
              padding: EdgeInsets.only(left: 10),
              child: LineupTitle(),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              selectedTileColor: AppColors.tertiaryDark,
              selectedColor: AppColors.tertiaryLight,
              selected: _currentIndex == 0,
              onTap: () {
                _onTabTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Game'),
              selectedTileColor: AppColors.tertiaryDark,
              selectedColor: AppColors.tertiaryLight,
              selected: _currentIndex == 1,
              onTap: () {
                _onTabTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Page 2'),
              selectedTileColor: AppColors.tertiaryDark,
              selectedColor: AppColors.tertiaryLight,
              selected: _currentIndex == 2,
              onTap: () {
                _onTabTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Deneme Page'),
              selectedTileColor: AppColors.tertiaryDark,
              selectedColor: AppColors.tertiaryLight,
              selected: _currentIndex == 3,
              onTap: () {
                _onTabTapped(3);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
