import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: const Color(0xffFAFAFA),
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
