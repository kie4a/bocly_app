import 'package:app/core/utils/styles.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/best_seller_list_view.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/best_seller_list_view_item.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/customAppBar.dart';
import 'package:app/features/aplash/presentation/home/presentataion/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                child: const CustomAppBar(),
              ),
              FeaturedBookListView(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text("Best Seller", style: Styles.textStyle20),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
