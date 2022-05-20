import 'package:alen_web/presentation/menu/appbar.dart';
import 'package:alen_web/presentation/menu/drawer.dart';
import 'package:alen_web/presentation/menu/my_menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PageTemplate extends StatelessWidget {
  final Widget child;
  const PageTemplate({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsiveValue = ResponsiveWrapper.of(context);
    return Scaffold(
      endDrawer:
          responsiveValue.isSmallerThan(DESKTOP) ? const CustomDrawer() : null,
      backgroundColor: Colors.white30,
      appBar: responsiveValue.isSmallerThan(DESKTOP)
          ? const PreferredSize(
              preferredSize: Size(double.infinity, 60),
              child: CustomAppBar(),
            )
          : const PreferredSize(
              child: MyMenuBar(),
              preferredSize: Size(double.infinity, 60),
            ),
      body: child,
    );
  }
}
