import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

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
                "Projects",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: isMobile ? 24 : 32,
                    ),
              ),
              const SizedBox(height: 16),
              Text(
                "Here are some projects I’ve worked on recently:",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: isMobile ? 16 : 18,
                    ),
              ),
              const SizedBox(height: 16),
              Text(
                "- Project A\n- Project B\n- Project C",
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
