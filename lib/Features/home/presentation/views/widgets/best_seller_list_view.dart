import 'package:book_app/Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:book_app/core/utils/custom_loading_indicator.dart';
import 'package:book_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess)
        {
          return ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(vertical: 10.0),
                  child: BookListViewIem(bookModel: state.books[index],),
                );
              });
        }else if(state is NewestBooksFailure)
          {
            return CustomErrorWidget(errMessage: state.errMessage);
          }else
            {
              return const CustomLoadingIndicator();
            }
      },
    );
  }
}
