import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

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
                "Hi, I'm a Flutter Developer",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: isMobile ? 24 : 32,
                    ),
              ),
              const SizedBox(height: 16),
              Text(
                "I build cross-platform apps with beautiful UIs.",
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
