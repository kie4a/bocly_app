import 'package:app/features/search/presentation/views/widget/custom_search_text_field.dart';
import 'package:app/features/search/presentation/views/widget/search_result_list_view.dart';
import 'package:flutter/material.dart';
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
          Expanded(child:
           SearchResultListView()),
        ],
      ),
    );
  }
}
