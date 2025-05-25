import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          alignment: Alignment.center,
          color: Colors.teal[800],
          child: Text(
            "© 2025 Your Name. All rights reserved.",
            style: TextStyle(
              color: Colors.white70,
              fontSize: isMobile ? 12 : 14,
            ),
          ),
        );
      },
    );
  }
}
