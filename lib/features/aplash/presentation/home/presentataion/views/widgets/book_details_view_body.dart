import 'package:app/constants.dart';
import 'package:app/core/utils/styles.dart';
import 'package:app/core/widgets/custom_button.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/book_action.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/book_rating.dart';
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
          padding: EdgeInsets.symmetric(horizontal: width * .25),
          child: CustomBookImageItem(),
        ),
        const SizedBox(height: 5),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(
            fontFamily: kGtSectraFine,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 2),
        Opacity(
          opacity: .7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle20.copyWith(
              color: Colors.grey,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(height: 5),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
 SizedBox(height: 10),
        BooksAction(),
      ],
    );
  }
}
