import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:ecommerce_getx/model/product.dart';
import 'package:ecommerce_getx/service/remote_service.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = List<Product>().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteService.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}