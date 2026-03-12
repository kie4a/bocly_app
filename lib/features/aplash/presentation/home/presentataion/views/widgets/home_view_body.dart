import 'package:app/core/utils/assets.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [const CustomAppBar()]);
  }
}
