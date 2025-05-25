import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

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
                "Contact Me",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: isMobile ? 24 : 32,
                    ),
              ),
              const SizedBox(height: 16),
              Text(
                "Email: yourname@example.com\nLinkedIn: linkedin.com/in/yourname",
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
