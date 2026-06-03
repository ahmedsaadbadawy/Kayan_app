import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/helpers/spaces.dart';
import '../utils/themes/theme_color.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 1.w,
      title: Row(
        children: [
          Image.asset('assets/images/logo.png', width: 60.w),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.language_rounded,
              color: kprimaryColor,
              size: 28.w,
            ),
          ),
          horizontalSpace(8.w),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
