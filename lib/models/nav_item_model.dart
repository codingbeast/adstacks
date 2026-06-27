import 'package:flutter/material.dart';

class NavItemModel {
  final String title;
  final IconData icon;
  final String route;

  const NavItemModel({
    required this.title,
    required this.icon,
    this.route = '',
  });
}
