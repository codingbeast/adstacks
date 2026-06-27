import 'package:flutter/material.dart';

class PageItem {
  final String title;
  final IconData icon;
  final Widget pageContent;

  const PageItem({
    required this.title,
    required this.icon,
    required this.pageContent,
  });
}
