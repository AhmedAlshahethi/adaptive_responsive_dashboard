import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income/income._section.dart';
import 'package:responsive_dashboard/widgets/quick%20_invoice/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/transcation_history/my_cards_and_transcation_histroy_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoice(),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          MyCardsAndTranscationHistroySection(),
                          SizedBox(
                            height: 24,
                          ),
                          Expanded(
                            child: IncomeSection(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
