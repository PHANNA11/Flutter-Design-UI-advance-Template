import 'package:design_ui/views/shop/controller/cart_controller.dart';
import 'package:design_ui/views/shop/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class ShoppingCartScreen extends StatelessWidget {
  ShoppingCartScreen({super.key});
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
        init: cartController,
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Shopping Cart'),
            ),
            body: ListView.builder(
              itemCount: cartController.list.length,
              itemBuilder: (context, index) =>
                  buildCartWidget(product: cartController.list[index]),
            ),
          );
        });
  }

  Widget buildCartWidget({required ProductModel product}) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(product.image))),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        maxLines: 2,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('\$${product.price.toStringAsFixed(2)}',
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.red)),
                      Row(
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
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
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                  onPressed: () async {
                    cartController.removeFromCart(productId: product.code);
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                    size: 30,
                  ))
            ],
          ),
        ),
      );
}
