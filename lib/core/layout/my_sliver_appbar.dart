import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/themes/theme_color.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;

    return SliverAppBar(
      floating: true,
      snap: true,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      automaticallyImplyLeading: false,

      actions: [
        IconButton(
          icon: Icon(
            isRtl ? Icons.arrow_forward : Icons.arrow_back,
            color: kprimaryColor,
            size: 28,
          ),
          onPressed: () => context.pop(),
        ),
        if (!isRtl) Spacer(),
      ],
    );
  }
}
