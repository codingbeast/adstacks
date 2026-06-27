class CampaignModel {
  final String name;
  final String status; // 'Active', 'Pending', 'Completed'
  final String budget;
  final String spend;
  final String clicks;

  const CampaignModel({
    required this.name,
    required this.status,
    required this.budget,
    required this.spend,
    required this.clicks,
  });
}
