import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/my_card/my_cards_sections.dart';
import 'package:responsive_dashboard/widgets/transcation_history/transcation_history.dart';

class MyCardsAndTranscationHistroySection extends StatelessWidget {
  const MyCardsAndTranscationHistroySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TranscationHistory(),
        ],
      ),
    );
  }
}
