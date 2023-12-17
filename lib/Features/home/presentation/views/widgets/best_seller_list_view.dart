import 'package:flutter/cupertino.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context,index){
          return  const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BookListViewIem(),
          );
        }

    );
  }
}
