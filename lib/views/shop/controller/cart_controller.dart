import 'package:design_ui/views/shop/model/product_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class CartController extends GetxController {
  RxList<ProductModel> list = <ProductModel>[].obs;
  void addToCart({ProductModel? product}) async {
    list.add(product!);
    update();
  }
}
