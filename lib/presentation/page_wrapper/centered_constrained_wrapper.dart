import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CenteredConstrainedWrapper extends StatelessWidget {
  final Widget child;
  const CenteredConstrainedWrapper({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ResponsiveConstraints(
        child: child,
        constraintsWhen: const [
          Condition.equals(
            name: MOBILE,
            value: BoxConstraints(maxWidth: 600),
          ),
          Condition.equals(
            name: TABLET,
            value: BoxConstraints(maxWidth: 800),
          ),
          Condition.equals(
            name: DESKTOP,
            value: BoxConstraints(maxWidth: 1280),
          )
        ],
      ),
    );
  }
}
