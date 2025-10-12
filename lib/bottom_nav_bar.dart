import 'package:flutter/material.dart';
import 'package:tasfia_project/history_screen.dart';
import 'package:tasfia_project/home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const Center(child: Text('My Cards Page')),
    const HistoryScreen(),
    const Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Color(0xFF1E1F4F),
        // BottomNavigationBar background
        selectedItemColor: Colors.white,
        // সিলেক্টেড আইটেম
        unselectedItemColor: Colors.white70,
        // আনসিলেক্টেড আইটেম
        type: BottomNavigationBarType.fixed,
        // আইটেম সব দেখানোর জন্য
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_rounded),
            label: 'My Cards',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
