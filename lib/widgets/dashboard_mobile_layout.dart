import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income/income._section.dart';
import 'package:responsive_dashboard/widgets/quick%20_invoice/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/transcation_history/my_cards_and_transcation_histroy_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoice(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTranscationHistroySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
