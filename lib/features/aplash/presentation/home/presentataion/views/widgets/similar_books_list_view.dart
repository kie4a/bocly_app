
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class similarBooksListWiew extends StatelessWidget {
  const similarBooksListWiew({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: const CustomBookImageItem(),
          );
        },
      ),
    );
  }
}