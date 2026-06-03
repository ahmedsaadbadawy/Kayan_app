import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';

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
            type: 'Property Type',
            value: type,
          ),
          PropertyDetailsGridCard(
            icon: Icons.straighten_outlined,
            type: 'Spacious life',
            value: '$meters Meter²',
          ),
          PropertyDetailsGridCard(
            icon: Icons.bed_rounded,
            type: 'No of Rooms',
            value: '$rooms Rooms',
          ),
          PropertyDetailsGridCard(
            icon: Icons.drive_eta_outlined,
            type: 'Listed properties',
            value: parking.isEmpty ? 'Parking' : parking,
          ),
        ],
      ),
    );
  }
}
