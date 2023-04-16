import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_api_flutter_course/models/products_model.dart';
import 'feeds_widget.dart';

class FeedsGridWidget extends StatelessWidget {
  final List<ProductsModel> productList;
  const FeedsGridWidget({Key? key, required this.productList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return productList.isEmpty
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: productList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 0.0,
                childAspectRatio: 0.6),
            itemBuilder: (ctx, index) {
              return ChangeNotifierProvider.value(
                value: productList[index],
                child: const FeedsWidget(),
              );
            },
          );
  }
}
