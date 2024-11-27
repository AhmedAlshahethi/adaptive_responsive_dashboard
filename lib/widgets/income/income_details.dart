import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      value: '40%',
    ),
    IncomeModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      value: '25%',
    ),
    IncomeModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      value: '20%',
    ),
    IncomeModel(
      color: Color(0xffE2DECD),
      title: 'Other',
      value: '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => ItemDetails(incomeModel: e),
          )
          .toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return ItemDetails(
    //       incomeModel: items[index],
    //     );
    //   },
    // );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeModel});
  final IncomeModel incomeModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: incomeModel.color,
        ),
      ),
      title: Text(
        incomeModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
