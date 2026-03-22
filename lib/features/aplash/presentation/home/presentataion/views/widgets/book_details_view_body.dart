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
          child: Column(
            children: const[
              CustomBookDetailsAppBar(),

              const Expanded(child: SizedBox(height: 10)),
             SimlerBooksSecton(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
