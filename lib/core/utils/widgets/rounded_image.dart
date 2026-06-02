import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: .circular(16.r),
      child: Image(
        image: NetworkImage(url),
        height: 200.h,
        width: .infinity,
        fit: .cover,
      ),
    );
  }
}
