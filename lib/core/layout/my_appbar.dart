import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/manager/locale_cubit/locale_cubit.dart';

import '../utils/helpers/spaces.dart';
import '../utils/themes/theme_color.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    return AppBar(
      titleSpacing: 1.w,
      title: Row(
        children: [
          Image.asset('assets/images/logo.png', width: 60.w),
          Spacer(),
          TextButton(
            onPressed: () {
              context.read<LocaleCubit>().toggleLocale();
            },
            child: Text(
              isRtl ? 'EN' : 'العربية',
              style: TextStyle(
                color: kprimaryColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
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
