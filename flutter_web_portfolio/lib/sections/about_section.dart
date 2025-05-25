import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About Me",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: isMobile ? 24 : 32,
                    ),
              ),
              const SizedBox(height: 16),
              Text(
                "I have X years of experience in mobile development. My focus is building apps using Flutter for both Android and iOS.",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: isMobile ? 16 : 18,
                    ),
              ),
            ],
          ),
        );
      },
    );
  }
}
