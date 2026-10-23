import 'package:get/get.dart';
import '../features/catalog/domain/item.dart';

class AppSnackBars {
  //static pq a gente nao quer instanciar ela
  static getAddItem(Item item) {
    return Get.showSnackbar(GetSnackBar(
        title: "Item adicionador",
        message: '${item.nome} foi adicionado à sacola de compras',
        duration: const Duration(seconds: 2)));
  }

  static getRemoveItem(Item item) {
    return Get.showSnackbar(GetSnackBar(
        title: "Item adicionador",
        message: '${item.nome} foi removido da sacola de compras',
        duration: const Duration(seconds: 2)));
  }

  static getPaymen() {
    return Get.showSnackbar(const GetSnackBar(
      title: 'Compra Finalizada!',
      message: 'Seu pedido chegara em breve.',
      duration: Duration(seconds: 2),
    ));
  }
}
