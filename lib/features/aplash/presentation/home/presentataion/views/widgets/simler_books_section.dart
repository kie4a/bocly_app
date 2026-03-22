
import 'package:app/core/utils/styles.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimlerBooksSecton extends StatelessWidget {
  const SimlerBooksSecton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
 Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like",
                  style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const similarBooksListWiew(),
      ],
    );
  }
}