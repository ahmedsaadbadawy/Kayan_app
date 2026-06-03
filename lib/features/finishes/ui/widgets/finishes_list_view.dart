import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kayan_app/core/utils/app_router.dart';
import 'package:kayan_app/core/utils/widgets/rounded_image.dart';
import 'package:kayan_app/features/finishes/manager/finishes_cubit/finishes_cubit.dart';

import '../../data/models/finishes_model.dart';

class FinishesListView extends StatelessWidget {
  const FinishesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FinishesCubit, FinishesState>(
      listener: (context, state) {
        if (state is FinishesFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errMessage)));
        }
      },
      builder: (context, state) {
        if (state is FinishesLoading || state is FinishesInitial) {
          return const Center(child: CircularProgressIndicator());
        }

        List<FinishesModel> finishesList = [];

        if (state is FinishesSuccess) {
          finishesList = state.finishes;
        }

        if (finishesList.isEmpty) {
          return const Center(child: Text('There is No Finishes yet'));
        }

        return ListView.builder(
          padding: .symmetric(horizontal: 16.w),
          itemCount: finishesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16).h,
              child: GestureDetector(
                onTap: () {
                  context.push(AppRouter.kFinishesDetailsScreen , extra: finishesList[index]);
                },
                child: RoundedImage(
                  url:
                      finishesList[index].imageUrl!,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
