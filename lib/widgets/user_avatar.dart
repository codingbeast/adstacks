import 'package:flutter/material.dart';
import '../constants/constants.dart';

class UserAvatar extends StatelessWidget {
  final String initials;
  final double radius;

  const UserAvatar({
    super.key,
    required this.initials,
    this.radius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: AppColors.primary,
      backgroundImage: const NetworkImage('https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&q=80&w=200'),
    );
  }
}
