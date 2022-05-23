import 'package:alen_web/pages/HomePage/widgets/multi_plattform.dart';
import 'package:alen_web/presentation/page_wrapper/centered_constrained_wrapper.dart';
import 'package:alen_web/presentation/page_wrapper/page_template.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> partblocks = [
      const CenteredConstrainedWrapper(child: MultiPlattform()),
    ];
    return PageTemplate(
      child: ListView.builder(
        itemCount: partblocks.length,
        itemBuilder: (context, index) => partblocks[index],
      ),
    );
  }
}
