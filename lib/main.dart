import 'package:alen_web/pages.dart/start_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'presentation/menu/appbar_widget.dart';

void main() {
  runApp(const MyPage());
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alen Web",
      home: const Scaffold(
        appBar: MenuItems(),
        body: HomePage(),
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(widget,
          defaultScale: true,
          minWidth: 400,
          defaultName: MOBILE,
          breakpoints: const [
            ResponsiveBreakpoint.autoScale(450, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP)
          ],
          backgroundColor: Colors.white),
    );
  }
}
