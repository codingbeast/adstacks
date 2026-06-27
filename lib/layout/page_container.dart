import 'package:flutter/material.dart';
import '../constants/constants.dart';

class PageContainer extends StatelessWidget {
  final List<Widget> sections;

  const PageContainer({super.key, required this.sections});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: AppPaddings.allLarge,
      itemCount: sections.length,
      separatorBuilder: (context, index) => AppMetrics.spaceLarge,
      itemBuilder: (context, index) => sections[index],
    );
  }
}
