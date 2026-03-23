import 'package:app/core/utils/styles.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/book_list_view_item.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/customa_app_bar_home_view.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: const CustomAppBarHomeView(),
              ),
              const FeaturedBookListView(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text("Best Seller", style: Styles.textStyle20),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: BookListViewItem(),
              ),
              childCount: 10,
            ),
          ),
        ),

        // const SliverFillRemaining(
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 5),
        //     child: BestSellerListView(),
        //   ),
        // ),
      ],
    );
  }
}
