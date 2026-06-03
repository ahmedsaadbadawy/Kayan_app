import 'package:flutter/material.dart';
import 'package:kayan_app/core/layout/my_sliver_appbar.dart';
import 'widgets/properties_list_view.dart';

class PropertiesScreen extends StatelessWidget {
  const PropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            MySliverAppBar(),
          ];
        },
        body: SafeArea(
          top: false,
          child: PropertiesListView(),
        ),
      ),
    );
  }
}

