
import 'package:app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:const [
       FaIcon(FontAwesomeIcons.solidStar,
       color: Color(0xffffdd4f),
       
       ),
      const SizedBox(width: 4,),
       Text("4.8",style: Styles.textStyle18,),
      const SizedBox(width: 4,)
      ,Text("(2390)")
      ],
      
    );
  }
}
