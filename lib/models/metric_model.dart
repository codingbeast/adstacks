import 'package:flutter/material.dart';

class MetricModel {
  final String title;
  final String value;
  final String percentage;
  final bool isPositive;
  final IconData icon;
  final Color color;

  const MetricModel({
    required this.title,
    required this.value,
    required this.percentage,
    required this.isPositive,
    required this.icon,
    required this.color,
  });
}
