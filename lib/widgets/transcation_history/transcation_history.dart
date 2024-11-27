import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transcation_history/transcation_history_header.dart';
import 'package:responsive_dashboard/widgets/transcation_history/transcation_history_list_view.dart';

class TranscationHistory extends StatelessWidget {
  const TranscationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TranscationHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TranscationHistoryListView(),
      ],
    );
  }
}
