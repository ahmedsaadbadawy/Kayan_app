import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/l10n/app_localizations.dart';

class SkipButton extends StatelessWidget {
  final void Function()? onPressed;
  const SkipButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(t.skip, style: TextStyle(fontSize: 15.sp)),
      ),
    );
  }
}
