import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kayan_app/core/utils/app_router.dart';

import '../../data/models/property_model.dart';
import '../../manager/properties_cubit/properties_cubit.dart';
import 'property_card.dart';

class PropertiesListView extends StatelessWidget {
  const PropertiesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PropertiesCubit, PropertiesState>(
      listener: (context, state) {
        if (state is PropertiesFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errMessage)));
        }
      },
      builder: (context, state) {
        if (state is PropertiesLoading || state is PropertiesInitial) {
          return const Center(child: CircularProgressIndicator());
        }

        List<PropertyModel> propertiesList = [];

        if (state is PropertiesSuccess) {
          propertiesList = state.properties;
        }

        if (propertiesList.isEmpty) {
          return const Center(child: Text('There are no properties yet'));
        }

        return ListView.builder(
          padding: .symmetric(horizontal: 16.w),
          itemCount: propertiesList.length,
          itemBuilder: (context, index) {
            return PropertyCard(
              propertyModel: propertiesList[index],
              onTap: () {
                context.push(
                  AppRouter.kPropertyDetailsScreen,
                  extra: propertiesList[index],
                );
              },
            );
          },
        );
      },
    );
  }
}
