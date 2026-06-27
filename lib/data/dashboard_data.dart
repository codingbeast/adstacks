import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../models/models.dart';

class DashboardData {
  DashboardData._();

  // Navigation Items
  static const List<NavItemModel> mainNavItems = [
    NavItemModel(title: 'Dashboard', icon: Icons.dashboard, route: '/dashboard'),
    NavItemModel(title: 'Analytics', icon: Icons.analytics, route: '/analytics'),
    NavItemModel(title: 'Campaigns', icon: Icons.campaign, route: '/campaigns'),
    NavItemModel(title: 'Audience', icon: Icons.people, route: '/audience'),
    NavItemModel(title: 'Settings', icon: Icons.settings, route: '/settings'),
  ];

  static const List<NavItemModel> footerNavItems = [
    NavItemModel(title: 'Help & Support', icon: Icons.help_outline, route: '/help'),
    NavItemModel(title: 'Logout', icon: Icons.logout, route: '/logout'),
  ];

  // Metric Cards Data
  static const List<MetricModel> metrics = [
    MetricModel(
      title: 'Total Revenue',
      value: '\$48,295',
      percentage: '+18.2%',
      isPositive: true,
      icon: Icons.attach_money,
      color: AppColors.success,
    ),
    MetricModel(
      title: 'Ad Impressions',
      value: '1.2M',
      percentage: '+24.5%',
      isPositive: true,
      icon: Icons.visibility,
      color: AppColors.info,
    ),
    MetricModel(
      title: 'Click Through Rate',
      value: '3.42%',
      percentage: '-1.2%',
      isPositive: false,
      icon: Icons.ads_click,
      color: AppColors.warning,
    ),
  ];

  // Campaign Table Data
  static const List<CampaignModel> recentCampaigns = [
    CampaignModel(name: 'Summer Sale Ad', status: 'Active', budget: '\$4,500', spend: '\$1,230', clicks: '12.4K'),
    CampaignModel(name: 'New Product Launch', status: 'Pending', budget: '\$12,000', spend: '\$0', clicks: '0'),
    CampaignModel(name: 'Retargeting Q3', status: 'Active', budget: '\$8,000', spend: '\$6,420', clicks: '45.1K'),
    CampaignModel(name: 'Brand Awareness', status: 'Completed', budget: '\$5,000', spend: '\$5,000', clicks: '28.9K'),
  ];
}
