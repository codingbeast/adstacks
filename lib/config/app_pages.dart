import 'package:flutter/material.dart';
import '../models/models.dart';
import '../pages/dashboard/dashboard_view.dart';

class AppPages {
  AppPages._();

  static const List<PageItem> pages = [
    PageItem(title: 'Home', icon: Icons.home, pageContent: DashboardView()),
    PageItem(title: 'Employees', icon: Icons.people_outline, pageContent: Center(child: Text('Employees Content'))),
    PageItem(title: 'Attendance', icon: Icons.fact_check_outlined, pageContent: Center(child: Text('Attendance Content'))),
    PageItem(title: 'Summary', icon: Icons.calendar_month_outlined, pageContent: Center(child: Text('Summary Content'))),
    PageItem(title: 'Information', icon: Icons.info_outline, pageContent: Center(child: Text('Information Content'))),
  ];

  static const List<PageItem> footerPages = [
    PageItem(title: 'Setting', icon: Icons.settings_outlined, pageContent: Center(child: Text('Setting Content'))),
    PageItem(title: 'Logout', icon: Icons.logout_outlined, pageContent: Center(child: Text('Logging out...'))),
  ];
}
