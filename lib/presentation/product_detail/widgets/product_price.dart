
import 'package:flutter/material.dart';

import '../../../core/configs/theme/app_colors.dart';
import '../../../domain/product/entities/product.dart';

class ProductPrice extends StatelessWidget {
  final ProductEntity productEntity;
  const ProductPrice({
    required this.productEntity,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        "\$${productEntity.discountedPrice != 0 ?
        productEntity.discountedPrice.toString() : 
        productEntity.price.toString()}",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.primary,
          fontSize: 14
        ),
      ),
    );
  }
}