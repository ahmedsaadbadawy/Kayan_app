import 'package:flutter/material.dart';
import 'package:kayan_app/core/layout/my_sliver_appbar.dart';

import 'widgets/finishes_list_view.dart';

class FinishesScreen extends StatelessWidget {
  const FinishesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [MySliverAppBar()];
        },
        body: SafeArea(
          top: false,
          child: FinishesListView(),
        ),
      ),
    );
  }
}
