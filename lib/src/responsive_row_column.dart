import 'package:flutter/material.dart';

class ResponsiveRowColumn extends StatelessWidget {
  final Widget widget1;
  final Widget widget2;
  final Widget widget3;

  ResponsiveRowColumn({
    Key? key,
    required this.widget1,
    required this.widget2,
    required this.widget3,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Column(
            children: [
              widget1,
              widget2,
              widget3,
            ],
          );
        } else {
          return Row(
            children: [
              widget1,
              widget2,
              widget3,
            ],
          );
        }
      },
    );
  }
}