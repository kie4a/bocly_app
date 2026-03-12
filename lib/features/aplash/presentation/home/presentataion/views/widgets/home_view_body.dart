import 'package:app/core/utils/assets.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/customAppBar.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/customlistviewitem.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [const CustomAppBar(), CustomListViewItem()]);
  }
}
