import 'package:design_ui/views/shop/model/product_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class CartController extends GetxController {
  RxList<ProductModel> list = <ProductModel>[].obs;
  void addToCart({ProductModel? product}) async {
    if (list.isNotEmpty) {
      if (list.every((element) => element.code != product!.code)) {
        list.add(product!);
      } else {
        list[list.indexWhere((element) => element.code == product!.code)].qty =
            list[list.indexWhere((element) => element.code == product!.code)]
                    .qty! +
                1;
      }
    } else {
      list.add(product!);
    }

    update();
  }

  void removeFromCart({required int productId}) async {
    int index = list.indexWhere((element) => element.code == productId);
    list.removeAt(index);
    update();
  }

  void incrementQty(ProductModel product) async {
    int index = list.indexWhere((element) => element.code == product.code);
    list[index].qty = list[index].qty! + 1;
    update();
  }

  void decrementQty(ProductModel product) async {
    int index = list.indexWhere((element) => element.code == product.code);
    if (list[index].qty == 1) {
      list.removeWhere((element) => element.code == product.code);
    } else {
      list[index].qty = list[index].qty! - 1;
    }
    update();
  }
}
