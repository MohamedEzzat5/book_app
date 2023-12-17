import 'package:book_app/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              BookDetailsSection(),
              Expanded(
                child:  SizedBox(
                  height: 45,
                ),
              ),
              SimilarBooksSection(),
              SizedBox(height: 40,),

            ],
          ),
        ),
      ),
    );
  }
}






