import 'package:chat_app/core/theme/theme.dart';
import 'package:chat_app/features/chat_app/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentScreen = 0;

  Widget screen() {
    switch (currentScreen) {
      case 1:
        return SizedBox();
      case 2:
        return SizedBox();
      case 3:
        return SizedBox();
      default:
        return HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      body: screen(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: color.primary,
        selectedIconTheme: IconThemeData(color: color.primary),
        // fixedColor: color.primary,
        currentIndex: currentScreen,
        onTap: (value) {
          setState(() {
            currentScreen = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/chat-icon.png',
              color: currentScreen == 0 ? color.primary : greyColor,
              width: 28,
              height: 28,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/timeline-icon.png',
              color: currentScreen == 1 ? color.primary : greyColor,
              width: 28,
              height: 28,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/call-icon.png',
              color: currentScreen == 2 ? color.primary : greyColor,
              width: 28,
              height: 28,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profile-icon.png',
              color: currentScreen == 3 ? color.primary : greyColor,
              width: 28,
              height: 28,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
