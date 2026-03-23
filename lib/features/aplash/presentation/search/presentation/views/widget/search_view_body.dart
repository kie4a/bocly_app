import 'package:app/core/utils/styles.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/book_list_view_item.dart';
import 'package:app/features/aplash/presentation/search/presentation/views/widget/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: Icon(Icons.arrow_back),
              ),
              Expanded(child: const CustomSearchTextField()),
            ],
          ),
          SizedBox(height: 10),
          // Align(
          //  alignment: Alignment.centerLeft,
          //   child: Text("Result", style: Styles.textStyle20)),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: const BookListViewItem(),
        );
      },
    );
  }
}
