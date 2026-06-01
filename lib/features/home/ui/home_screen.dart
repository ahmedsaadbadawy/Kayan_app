import 'package:flutter/material.dart';
import 'package:kayan_app/core/layout/my_appbar.dart';
import 'package:kayan_app/core/utils/helpers/spaces.dart';
import 'widgets/home_categories_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: Padding(padding: myPadding, child: HomeCategoriesSection()),
      ),
    );
  }
}
