import 'package:chat_app/features/chat_app/presentation/pages/chat_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChatScreen(),
            ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        margin: const EdgeInsets.symmetric(vertical: 6.0),
        child: Row(
          children: [
            Stack(
              children: const  [
                Placeholder(
                  fallbackHeight: 48,
                  fallbackWidth: 48,
                ),
              ],
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Darlene Steward',
                    style: TextStyle(
                      fontWeight: fontMedium,
                      color: textPrimary,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text('Pls take a look at the images.')
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text('18.31'),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  width: 24,
                  height: 22,
                  decoration: BoxDecoration(
                    color: color.primary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: color.onPrimary,
                        fontWeight: fontBold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
