import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';

class SettingsItemTile extends StatelessWidget {
  const SettingsItemTile({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.onTap,
    this.child,
  }) : super(key: key);
  final String imagePath;
  final String name;
  final Widget? child;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(
                    color: textSecondary,
                  ),
                ),
              ),
              child ??
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: textSecondary,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
