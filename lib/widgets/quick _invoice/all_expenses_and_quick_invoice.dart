import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses/all_expenses.dart';
import 'package:responsive_dashboard/widgets/quick%20_invoice/quick_invoice.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
