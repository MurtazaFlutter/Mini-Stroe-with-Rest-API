import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products_model.dart';
import '../widgets/feeds_widget.dart';

class FeedsScreen extends StatelessWidget {
  final List<ProductsModel> productList;
  const FeedsScreen({Key? key, required this.productList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 4,
        title: const Text('All Products'),
      ),
      body: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 0.0,
              childAspectRatio: 0.7),
          itemBuilder: (ctx, index) {
            return ChangeNotifierProvider.value(
              value: productList[index],
              child: const FeedsWidget(),
            );
          }),
    );
  }
}
