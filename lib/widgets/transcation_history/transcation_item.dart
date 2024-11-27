import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transcation_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TranscationItem extends StatelessWidget {
  const TranscationItem({super.key, required this.transcationModel});
  final TranscationModel transcationModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transcationModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transcationModel.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transcationModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transcationModel.isWithdraw
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
