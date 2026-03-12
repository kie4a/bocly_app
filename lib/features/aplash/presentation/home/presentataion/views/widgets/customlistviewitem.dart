
import 'package:app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5/3.9,
      child: Container(
  
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image:const AssetImage(AssetsDate.testImage),
          ),
        ),
      ),
    );
  }
}
