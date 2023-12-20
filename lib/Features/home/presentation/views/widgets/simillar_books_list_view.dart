import 'package:book_app/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_app/core/utils/custom_loading_indicator.dart';
import 'package:book_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
  builder: (context, state) {
    if(state is SimilarBooksSuccess)
      {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: CustomBookImage(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmZBWXUFYSEz3ZFW7Fa7wtzKdtMgcPqNpWvQ&usqp=CAU',),
                );
              }),
        );
      } else if (state is SimilarBooksFailure)
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
