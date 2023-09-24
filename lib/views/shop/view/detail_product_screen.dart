import 'package:design_ui/views/shop/controller/cart_controller.dart';
import 'package:design_ui/views/shop/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class DetailProductScreen extends StatelessWidget {
  DetailProductScreen({super.key, required this.product});
  ProductModel product;

  final cartController = Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: GetBuilder<CartController>(
          init: cartController,
          builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(product.image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          cartController.decrementQty(product);
                        },
                        child: const CircleAvatar(
                          maxRadius: 15,
                          child: Icon(Icons.remove),
                        ),
                      ),
                      Chip(
                          label: Text(product.qty.toString(),
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold))),
                      GestureDetector(
                        onTap: () async {
                          cartController.incrementQty(product);
                        },
                        child: const CircleAvatar(
                          maxRadius: 15,
                          child: Icon(Icons.add),
                        ),
                      )
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}
