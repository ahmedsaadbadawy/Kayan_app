import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({super.key, required this.url, this.onTap});
  final String url;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: .circular(16.r),
        child: Image(
          image: NetworkImage(url),
          height: 200.h,
          width: .infinity,
          fit: .cover,
        ),
      ),
    );
  }
}
