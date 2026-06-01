import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kayan_app/core/utils/helpers/spaces.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';
import 'widgets/property_card.dart';

class PropertiesScreen extends StatelessWidget {
  const PropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: kprimaryColor, size: 28),
          onPressed: () => context.pop(),
        ),
      ),
      // goal: implement the properties screen => as [Grid]
      body: Padding(
        padding: myPadding,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return PropertyCard(
              imageUrl:
                  'https://d28pk2nlhhgcne.cloudfront.net/assets/app/uploads/sites/3/2021/08/homebyme-homepage-gallery-9.jpg',
              name: 'Property Name',
              address: 'Property Address',
              status: 'FOR SALE',
              price: '6,000,000',
            );
          },
        ),
      ),
    );
  }
}
