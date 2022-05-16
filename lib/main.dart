import 'package:flutter/material.dart';

import 'presentation/menu/appbar_widget.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Alen Web",
      home: Scaffold(
        appBar: MyAppBar(),
        body: Placeholder(),
      ),
    );
  }
}
