import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/utils/helpers/spaces.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';
import 'package:kayan_app/core/utils/themes/theme_text.dart';
import 'package:kayan_app/core/utils/widgets/about_property.dart';

class PropertyDetailsInfo extends StatelessWidget {
  const PropertyDetailsInfo({super.key, required this.price, required this.name, required this.location, required this.description});
  final String price,name,location, description;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6.h,
      crossAxisAlignment: .start,
      children: [
        Text(
          name,
          style: ThemeText.text24darkBlue(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            Text(
              'EGP ',
              style: ThemeText.text18secondary(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              price,
              style: ThemeText.text20secondary(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        Row(
          spacing: 6.w,
          children: [
            Icon(Icons.location_on_outlined, color: ksecondaryColor),
            Text(
              location,
              style: ThemeText.text16grayUnderlined(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        // TO DO: contacts Row
        verticalSpace(6.h),
        AboutProperty(description: description),
      ],
    );
  }
}
