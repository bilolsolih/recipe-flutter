import 'package:flutter/material.dart';
import 'widgets/app_bar_detail.dart';
import 'widgets/bottom_nav_bar.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key,required this.appBar, required this.body});

  final Widget body;
  final PreferredSizeWidget appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: appBar,
      body: body,
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
