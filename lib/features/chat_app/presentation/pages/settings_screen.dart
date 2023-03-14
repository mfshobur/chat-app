import 'package:chat_app/core/theme/theme.dart';
import 'package:flutter/material.dart';

import '../widgets/settings_item_tile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: color.background,
        title: Text(
          'Settings',
          style: TextStyle(
            color: color.onBackground,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: textSecondary,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.background,
                backgroundGradient,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 24),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    children: [
                      const Placeholder(
                        fallbackHeight: 64,
                        fallbackWidth: 64,
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Adina Nurrahma',
                              style: TextStyle(
                                color: textPrimary,
                                fontSize: 20,
                                fontWeight: fontSemiBold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Trust your feelings, be a good human beings',
                              style: TextStyle(
                                color: textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 27,
                ),
                const Divider(
                  thickness: 1.5,
                ),
                const SizedBox(
                  height: 16,
                ),
                SettingsItemTile(
                    imagePath: 'assets/images/dark-mode-icon.png',
                    name: 'Dark mode',
                    child: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                    onTap: () {}),
                SettingsItemTile(
                  imagePath: 'assets/images/account-icon.png',
                  name: 'Account',
                  onTap: () {
                  },
                ),
                SettingsItemTile(
                  imagePath: 'assets/images/notification-icon.png',
                  name: 'Notificaiton',
                  onTap: () {},
                ),
                SettingsItemTile(
                    imagePath: 'assets/images/blue-chat-icon.png',
                    name: 'Chat Settings',
                    onTap: () {}),
                SettingsItemTile(
                    imagePath: 'assets/images/data-and-storage-icon.png',
                    name: 'Data and storage',
                    onTap: () {}),
                SettingsItemTile(
                    imagePath: 'assets/images/privacy-and-security-icon.png',
                    name: 'Security and security',
                    onTap: () {}),
                SettingsItemTile(
                    imagePath: 'assets/images/about-icon.png',
                    name: 'About',
                    onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
