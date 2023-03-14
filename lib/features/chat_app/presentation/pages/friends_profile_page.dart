import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FriendsProfilePage extends StatefulWidget {
  FriendsProfilePage({super.key});

  @override
  State<FriendsProfilePage> createState() => _FriendsProfilePageState();
}

class _FriendsProfilePageState extends State<FriendsProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 240.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/background-test.jpeg',
                  fit: BoxFit.cover,
                ),
                title: Text('Muzakkir'),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 900,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
