import 'package:chat_app/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/chat_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
          ],
        ),
      ),
    );
  }
}
