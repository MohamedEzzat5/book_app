import 'package:book_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/cupertino.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return const  Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.0),
              child:  CustomBookImage(),
            );
          }
      ),
    );
  }
}