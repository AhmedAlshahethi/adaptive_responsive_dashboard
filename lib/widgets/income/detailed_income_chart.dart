import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sections: [
        PieChartSectionData(
            title: activeIndex == 0 ? 'Design service' : '40%',
            value: 40,
            color: const Color(0xff208CC8),
            showTitle: true,
            radius: activeIndex == 0 ? 60 : 50,
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 0 ? null : Colors.white,
            ),
            titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null),
        PieChartSectionData(
            title: activeIndex == 1 ? 'Design product' : '25%',
            value: 25,
            color: const Color(0xff4EB7F2),
            showTitle: true,
            radius: activeIndex == 1 ? 60 : 50,
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 1 ? null : Colors.white,
            ),
            titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null),
        PieChartSectionData(
            title: activeIndex == 2 ? 'Product royalti' : '20%',
            value: 20,
            color: const Color(0xff064061),
            showTitle: true,
            radius: activeIndex == 2 ? 60 : 50,
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 2 ? null : Colors.white,
            ),
            titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null),
        PieChartSectionData(
            title: activeIndex == 3 ? 'Other' : '22st%',
            value: 22,
            color: const Color(0xffE2DECD),
            showTitle: true,
            radius: activeIndex == 3 ? 60 : 50,
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 3 ? null : Colors.white,
            ),
            titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null),
      ],
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
    );
  }
}
