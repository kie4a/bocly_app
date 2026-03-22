import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/custom_app_bar.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImageItem(),
        ),
      ],
    );
  }
}
