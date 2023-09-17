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
  final cartController = Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Obx(() => ListView.builder(
            itemCount: cartController.list.length,
            itemBuilder: (context, index) =>
                buildCartWidget(product: cartController.list[index]),
          )),
    );
  }

  Widget buildCartWidget({required ProductModel product}) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration: BoxDecoration(),
          child: Row(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(product.name),
              )
            ],
          ),
        ),
      );
}
