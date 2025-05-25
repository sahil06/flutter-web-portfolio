import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/theme/theme.dart';

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
          color: portfolioTheme.primaryColor,
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
