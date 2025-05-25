import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final void Function(String section) onNavItemClick;

  const Header({super.key, required this.onNavItemClick});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      color: Colors.teal[800],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("My Portfolio", style: TextStyle(color: Colors.white)),
          if (!isMobile)
            Row(
              children: [
                TextButton(
                  onPressed: () => onNavItemClick("home"),
                  child: const Text("Home", style: TextStyle(color: Colors.white)),
                ),
                TextButton(
                  onPressed: () => onNavItemClick("about"),
                  child: const Text("About", style: TextStyle(color: Colors.white)),
                ),
                TextButton(
                  onPressed: () => onNavItemClick("projects"),
                  child: const Text("Projects", style: TextStyle(color: Colors.white)),
                ),
                TextButton(
                  onPressed: () => onNavItemClick("contact"),
                  child: const Text("Contact", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
