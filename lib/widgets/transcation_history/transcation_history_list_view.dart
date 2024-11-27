import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transcation_model.dart';
import 'package:responsive_dashboard/widgets/transcation_history/transcation_item.dart';

class TranscationHistoryListView extends StatefulWidget {
  const TranscationHistoryListView({super.key});

  @override
  State<TranscationHistoryListView> createState() =>
      _TranscationHistoryListViewState();
}

class _TranscationHistoryListViewState
    extends State<TranscationHistoryListView> {
  final List<TranscationModel> items = const [
    TranscationModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithdraw: true,
    ),
    TranscationModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM ',
      amount: r'$2,000',
      isWithdraw: false,
    ),
    TranscationModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM ',
      amount: r'$20,129',
      isWithdraw: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => TranscationItem(transcationModel: e),
          )
          .toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return TranscationItem(transcationModel: items[index]);
    //   },
    // );
  }
}
