import 'package:e_commerce_app/core/style/colors.dart';
import 'package:e_commerce_app/modules/shop/presentation/widgets/banners_widget.dart';
import 'package:e_commerce_app/modules/shop/presentation/widgets/products_widget.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/l10n.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BannersWidget(),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  color: Theme.of(context).colorScheme.primary,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: Text(
                    S.of(context).productsTitle,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColorLight.onPrimaryColor),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const ProductsWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
