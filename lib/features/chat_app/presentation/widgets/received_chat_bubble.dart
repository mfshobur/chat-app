import 'package:chat_app/core/theme/theme.dart';
import 'package:flutter/material.dart';

class ReceivedChatBubble extends StatelessWidget {
  const ReceivedChatBubble({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.85,
        ),
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(bottom: 4.0),
        decoration: BoxDecoration(
          color: color.surfaceVariant,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
            bottomRight: Radius.circular(8.0),
          ),
        ),
        child: text.length > 10
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      color: color.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '1:50 PM',
                    style: TextStyle(
                      fontSize: 10,
                      color: textSecondary,
                    ),
                  ),
                ],
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      color: color.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    '1:50 PM',
                    style: TextStyle(
                      fontSize: 10,
                      color: textSecondary,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
