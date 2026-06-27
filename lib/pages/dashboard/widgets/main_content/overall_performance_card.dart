import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class OverallPerformanceCard extends StatelessWidget {
  const OverallPerformanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    // Data sample: [Year, Pending Done Value, Project Done Value] (Max 50)
    final years = ['2015', '2016', '2017', '2018', '2019', '2020'];
    final pendingValues = [32.0, 10.0, 42.0, 10.0, 48.0, 28.0]; // Replicating the beautiful wave shape from the image
    final doneValues = [22.0, 15.0, 45.0, 15.0, 38.0, 27.0]; // Replicating the beautiful wave shape from the image

    return Container(
      padding: const EdgeInsets.all(32.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(color: Colors.grey.withValues(alpha: 0.2), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Header & Legend Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Over All Performance', style: AppTextStyles.heading2.copyWith(color: AppColors.textPrimary)),
                    AppMetrics.spaceTiny,
                    Text('The Years', style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textPrimary.withValues(alpha: 0.8))),
                  ],
                ),
              ),
              // Legend matching image colors perfectly
              Wrap(
                children: [
                  _buildLegendItem(color: const Color(0xFFE08D96), label: 'Pending\nDone'),
                  AppMetrics.spaceLarge,
                  _buildLegendItem(color: const Color(0xFF452B9C), label: 'Project\nDone'),
                ],
              ),
            ],
          ),
          AppMetrics.spaceLarge,

          // 2. Chart Area with Axes & Tooltip
          SizedBox(
            height: 260,
            child: Row(
              children: [
                // Vertical Axis (0 to 50)
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0), // Align with chart canvas height
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('50', style: AppTextStyles.bodySmall.copyWith(color: Colors.grey.shade600)),
                      Text('40', style: AppTextStyles.bodySmall.copyWith(color: Colors.grey.shade600)),
                      Text('30', style: AppTextStyles.bodySmall.copyWith(color: Colors.grey.shade600)),
                      Text('20', style: AppTextStyles.bodySmall.copyWith(color: Colors.grey.shade600)),
                      Text('10', style: AppTextStyles.bodySmall.copyWith(color: Colors.grey.shade600)),
                      Text('0', style: AppTextStyles.bodySmall.copyWith(color: Colors.grey.shade600)),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                // Vertical dividing axis line
                Container(
                  width: 1,
                  height: 230,
                  color: Colors.grey.withValues(alpha: 0.25),
                ),
                const SizedBox(width: 16),

                // Line Chart, Area Fill & Horizontal Axis
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            // Line Chart & Area Shadow Custom Paint
                            SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: CustomPaint(
                                painter: _LineChartPainter(
                                  pendingValues: pendingValues,
                                  doneValues: doneValues,
                                ),
                              ),
                            ),
                            // Floating Tooltip Banner (2023 • 55) positioned perfectly
                            Positioned(
                              top: 10,
                              right: 160,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [Color(0xFF8E2DE2), Color(0xFF4A00E0)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF4A00E0).withValues(alpha: 0.3),
                                      blurRadius: 12,
                                      offset: const Offset(0, 6),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      '2023',
                                      style: AppTextStyles.bodySmall.copyWith(color: Colors.white.withValues(alpha: 0.9), fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Container(
                                          width: 6,
                                          height: 6,
                                          decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          '55',
                                          style: AppTextStyles.bodyLarge.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Horizontal dividing axis line
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey.withValues(alpha: 0.25),
                      ),
                      const SizedBox(height: 12),
                      // Horizontal Labels (2015 to 2020)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: years.map((year) {
                          return Text(year, style: AppTextStyles.bodySmall.copyWith(color: Colors.grey.shade600));
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLegendItem({required Color color, required String label}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        ),
        AppMetrics.spaceSmall,
        Text(label, style: AppTextStyles.bodyMedium.copyWith(color: color, fontWeight: FontWeight.w600, height: 1.2)),
      ],
    );
  }
}

class _LineChartPainter extends CustomPainter {
  final List<double> pendingValues;
  final List<double> doneValues;

  _LineChartPainter({required this.pendingValues, required this.doneValues});

  @override
  void paint(Canvas canvas, Size size) {
    if (pendingValues.isEmpty || doneValues.isEmpty) return;

    final width = size.width;
    final height = size.height;
    const maxVal = 50.0;

    final pendingPath = Path();
    final donePath = Path();

    final pendingPoints = <Offset>[];
    final donePoints = <Offset>[];

    final stepX = width / (pendingValues.length - 1);

    for (int i = 0; i < pendingValues.length; i++) {
      final x = i * stepX;
      final pendingY = height - ((pendingValues[i] / maxVal) * height);
      final doneY = height - ((doneValues[i] / maxVal) * height);

      final pendingOffset = Offset(x, pendingY);
      final doneOffset = Offset(x, doneY);

      pendingPoints.add(pendingOffset);
      donePoints.add(doneOffset);

      if (i == 0) {
        pendingPath.moveTo(x, pendingY);
        donePath.moveTo(x, doneY);
      } else {
        final prevPending = pendingPoints[i - 1];
        final prevDone = donePoints[i - 1];

        // Smooth Cubic Bézier Curve for Pending Path
        final pendingCp1X = prevPending.dx + (x - prevPending.dx) / 2;
        final pendingCp1Y = prevPending.dy;
        final pendingCp2X = prevPending.dx + (x - prevPending.dx) / 2;
        final pendingCp2Y = pendingY;
        pendingPath.cubicTo(pendingCp1X, pendingCp1Y, pendingCp2X, pendingCp2Y, x, pendingY);

        // Smooth Cubic Bézier Curve for Done Path
        final doneCp1X = prevDone.dx + (x - prevDone.dx) / 2;
        final doneCp1Y = prevDone.dy;
        final doneCp2X = prevDone.dx + (x - prevDone.dx) / 2;
        final doneCp2Y = doneY;
        donePath.cubicTo(doneCp1X, doneCp1Y, doneCp2X, doneCp2Y, x, doneY);
      }
    }

    // 1. Draw Shimmering Gradient Area Shadow under Project Done Line
    final fillPath = Path()..addPath(donePath, Offset.zero);
    fillPath.lineTo(width, height);
    fillPath.lineTo(0, height);
    fillPath.close();

    final gradientPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xFF452B9C).withValues(alpha: 0.25),
          const Color(0xFF452B9C).withValues(alpha: 0.0),
        ],
      ).createShader(Rect.fromLTWH(0, 0, width, height))
      ..style = PaintingStyle.fill;

    canvas.drawPath(fillPath, gradientPaint);

    // 2. Paint & Draw Pending Done Line (Soft Pink/Rose)
    final pendingPaint = Paint()
      ..color = const Color(0xFFE08D96)
      ..strokeWidth = 3.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // 3. Paint & Draw Project Done Line (Deep Purple/Indigo)
    final donePaint = Paint()
      ..color = const Color(0xFF452B9C)
      ..strokeWidth = 3.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawPath(pendingPath, pendingPaint);
    canvas.drawPath(donePath, donePaint);
  }

  @override
  bool shouldRepaint(covariant _LineChartPainter oldDelegate) {
    return oldDelegate.pendingValues != pendingValues || oldDelegate.doneValues != doneValues;
  }
}
