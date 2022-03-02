import 'package:flutter/material.dart';

import 'constains.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: KLabelTextStyle,
        )
      ],
    );
  }
}
