import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/game_screen.dart';
import 'screens/page2_screen.dart';
import 'screens/deneme_screen.dart';

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
        title: const Text('Multi Page Apps'),
      ),
      body: _screens[_currentIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              // decoration: BoxDecoration(
              //   color: Colors.blue,
              // ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                child: Text(
                  'LINEUP',
                  style: TextStyle(
                    letterSpacing: 8,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              selected: _currentIndex == 0,
              onTap: () {
                _onTabTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Game'),
              selected: _currentIndex == 1,
              onTap: () {
                _onTabTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Page 2'),
              selected: _currentIndex == 2,
              onTap: () {
                _onTabTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Deneme Page'),
              selected: _currentIndex == 3,
              onTap: () {
                _onTabTapped(3);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: _onTabTapped,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.pageview),
      //       label: 'Page 1',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.pageview),
      //       label: 'Page 2',
      //     ),
      //   ],
      // ),
    );
  }
}
