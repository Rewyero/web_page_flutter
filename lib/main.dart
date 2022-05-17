import 'package:alen_web/pages.dart/start_page.dart';
import 'package:flutter/material.dart';
import 'presentation/menu/appbar_widget.dart';

void main() {
  runApp(const MyPage());
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Alen Web",
      home: Scaffold(
        appBar: MyAppBar(),
        body: HomePage(),
      ),
    );
  }
}
