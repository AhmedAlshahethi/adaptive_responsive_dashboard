import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/income/income_section_body.dart';
import 'package:responsive_dashboard/widgets/income/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          SizedBox(
            height: 16,
          ),
          IncomeSectionBody()
        ],
      ),
    );
  }
}
