import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: .circular(16.r),
      child: CachedNetworkImage(
        imageUrl: url,
        placeholder: (context, url) =>
            Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => Icon(Icons.error),
        height: 200.h,
        width: .infinity,
        fit: .cover,
      ),
    );
  }
}
