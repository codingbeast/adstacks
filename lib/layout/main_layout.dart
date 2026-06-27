import 'package:flutter/material.dart';
import '../config/app_pages.dart';
import '../constants/constants.dart';
import '../pages/dashboard/widgets/header_widget.dart';
import '../pages/dashboard/widgets/sidebar_widget.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  void _onPageSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = AppBreakpoints.isDesktop(context);
    final activePage = AppPages.pages[_selectedIndex];

    return Scaffold(
      backgroundColor: AppColors.background,
      drawer: !isDesktop
          ? Drawer(
              child: SidebarWidget(
                selectedIndex: _selectedIndex,
                onItemSelected: (index) {
                  _onPageSelected(index);
                  Navigator.pop(context); // Close drawer on mobile
                },
              ),
            )
          : null,
      body: Row(
        children: [
          // 1. Left Sidebar (Global Navigation)
          if (isDesktop)
            SidebarWidget(
              selectedIndex: _selectedIndex,
              onItemSelected: _onPageSelected,
            ),

          // 2. Global Center Body (Header + Active Page Content)
          Expanded(
            child: Column(
              children: [
                if (!isDesktop)
                  AppBar(
                    backgroundColor: AppColors.background,
                    iconTheme: const IconThemeData(color: AppColors.textPrimary),
                    title: Text(activePage.title, style: AppTextStyles.heading3),
                    elevation: 0,
                  )
                else
                  HeaderWidget(title: activePage.title),
                Expanded(
                  child: activePage.pageContent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
