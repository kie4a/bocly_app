
import 'package:app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  16,vertical:40 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsDate.logo,height: 30,),
          IconButton(
            
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.magnifyingGlass,size: 30,),
            ),
        ],
      ),
    );
  }
}
