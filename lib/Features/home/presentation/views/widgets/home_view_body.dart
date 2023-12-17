import 'package:book_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      shrinkWrap: true,
      slivers: [
    SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: CustomAppBar(),
            ),
            FeaturedBooksListView(),
             SizedBox(
              height: 50,
            ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 30.0),
               child: Text(
                'Best Seller',
                style: Styles.textStyle18,
                           ),
             ),
             SizedBox(
              height: 20,
            ),
          ],
        ),

    ),
         SliverFillRemaining(child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: BestSellerListview(),
        ),),
      ],
    );
  }
}








