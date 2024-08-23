import 'package:get/get.dart';
import '../transaction/transaction_controller.dart';
import '../action/action_controller.dart';
import 'main_controller.dart';
import '../product/product_controller.dart';
import '../history/history_controller.dart';

class NavTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavTabController>(() => NavTabController());
    Get.lazyPut<ProductController>(() => ProductController());
    Get.lazyPut<TransactionController>(() => TransactionController());
    Get.lazyPut<ActionController>(() => ActionController());
    Get.lazyPut<HistoryController>(() => HistoryController());
  }
}