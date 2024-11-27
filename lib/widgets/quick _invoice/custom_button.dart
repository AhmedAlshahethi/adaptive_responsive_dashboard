import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.titleColor});
  final Color? backgroundColor, titleColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Send Money',
          style: AppStyles.styleSemiBold16(context).copyWith(
            color: titleColor,
          ),
        ),
      ),
    );
  }
}
