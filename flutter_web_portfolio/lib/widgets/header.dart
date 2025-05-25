import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/theme/theme.dart';

class Header extends StatelessWidget {
  final void Function(String section) onNavItemClick;

  const Header({super.key, required this.onNavItemClick});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    return Container(
      color: portfolioTheme.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "My Portfolio",
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          if (isMobile)
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            )
          else
            Row(
              children: _buildNavButtons(),
            ),
        ],
      ),
    );
  }

  List<Widget> _buildNavButtons() {
    return [
      _navButton("Home", "home"),
      _navButton("About", "about"),
      _navButton("Projects", "projects"),
      _navButton("Contact", "contact"),
    ];
  }

  Widget _navButton(String label, String section) {
    return TextButton(
      onPressed: () => onNavItemClick(section),
      child: Text(label, style: const TextStyle(color: Colors.white)),
    );
  }
}
