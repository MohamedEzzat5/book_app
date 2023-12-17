import 'package:book_app/Features/home/presentation/views/widgets/simillar_books_list_view.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/style.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16,),
        const SimilarBooksListView(),],
    );
  }
}