import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/sections/about_section.dart';
import 'package:flutter_web_portfolio/sections/contact_section.dart';
import 'package:flutter_web_portfolio/sections/home_section.dart';
import 'package:flutter_web_portfolio/sections/projects_section.dart';
import 'package:flutter_web_portfolio/theme/theme.dart';
import 'package:flutter_web_portfolio/widgets/footer.dart';
import 'package:flutter_web_portfolio/widgets/header.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter Portfolio',
      theme: portfolioTheme,
      home: const PortfolioHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PortfolioHomePage extends StatefulWidget {
  const PortfolioHomePage({super.key});

  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  final ScrollController _scrollController = ScrollController();

  // Create keys to mark sections
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: portfolioTheme.primaryColorDark,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _drawerItem(context, "Home", "home"),
            _drawerItem(context, "About", "about"),
            _drawerItem(context, "Projects", "projects"),
            _drawerItem(context, "Contact", "contact"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Header(
              onNavItemClick: (section) {
                if (section == "home") scrollToSection(_homeKey);
                if (section == "about") scrollToSection(_aboutKey);
                if (section == "projects") scrollToSection(_projectsKey);
                if (section == "contact") scrollToSection(_contactKey);
              },
            ),
            Container(key: _homeKey, child: const HomeSection()),
            Container(key: _aboutKey, child: const AboutSection()),
            Container(key: _projectsKey, child: const ProjectsSection()),
            Container(key: _contactKey, child: const ContactSection()),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(BuildContext context, String title, String sectionKey) {
    return ListTile(
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: () {
        Navigator.of(context).pop(); // close drawer
        onNavItemClick(sectionKey); // scroll to section
      },
    );
  }

  void onNavItemClick(String section) {
    if (section == "home") scrollToSection(_homeKey);
    if (section == "about") scrollToSection(_aboutKey);
    if (section == "projects") scrollToSection(_projectsKey);
    if (section == "contact") scrollToSection(_contactKey);
  }
}
