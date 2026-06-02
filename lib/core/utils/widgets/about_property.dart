import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/theme_color.dart';
import '../themes/theme_text.dart';

class AboutProperty extends StatelessWidget {
  const AboutProperty({super.key, required this.description});
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6.h,
      children: [
        Row(
          spacing: 6.w,
          children: [
            Container(width: 2.5.w, height: 18.w, color: kprimaryColor),
            Text(
              'About the property',
              style: ThemeText.text20darkBlue(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        Text(description, style: ThemeText.text16gray()),
      ],
    );
  }
}
