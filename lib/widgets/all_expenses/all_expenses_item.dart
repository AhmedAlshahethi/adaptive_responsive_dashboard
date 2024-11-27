import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/widgets/all_expenses/inactive_and_active_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isActive});
  final bool isActive;
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpensesItem(itemModel: itemModel)
        : InActiveExpensesItem(itemModel: itemModel);
  }
}
