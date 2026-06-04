import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';
import 'package:kayan_app/l10n/app_localizations.dart';

import 'property_details_grid_card.dart';

class PropertyDetailsGrid extends StatelessWidget {
  const PropertyDetailsGrid({
    super.key,
    required this.type,
    required this.meters,
    required this.rooms,
    required this.parking,
  });
  final String type, parking;
  final int meters, rooms;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        color: kgrayBackground,
      ),
      padding: const EdgeInsets.all(14).h,
      child: GridView.count(
        shrinkWrap: true,
        padding: .zero,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 1,
        mainAxisSpacing: 16,
        crossAxisSpacing: 14,
        childAspectRatio: 1.75,
        children: [
          PropertyDetailsGridCard(
            icon: Icons.apartment,
            type: t.propertyType,
            value: type,
          ),
          PropertyDetailsGridCard(
            icon: Icons.straighten_outlined,
            type: t.spaciousLife,
            value: t.meterSquare(meters),
          ),
          PropertyDetailsGridCard(
            icon: Icons.bed_rounded,
            type: t.noOfRooms,
            value: t.roomsCount(rooms),
          ),
          PropertyDetailsGridCard(
            icon: Icons.drive_eta_outlined,
            type: t.listedProperties,
            value: parking.isEmpty ? t.parkingText : parking,
          ),
        ],
      ),
    );
  }
}
