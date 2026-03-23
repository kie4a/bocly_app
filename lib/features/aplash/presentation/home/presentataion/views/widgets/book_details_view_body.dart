import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/books_details_section.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/custom_app_bar.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/simler_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: const [
              CustomBookDetailsAppBar(),
              BookDetailsSection(),
              
              SizedBox(height: 10),
              SimilarBooksSection(),
               SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
