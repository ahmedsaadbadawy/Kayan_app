import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocalRoundedImage extends StatelessWidget {
  const LocalRoundedImage({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: .circular(16.r),
      child: Image.asset(url, height: 200.h, width: .infinity, fit: .cover),
    );
  }
}
