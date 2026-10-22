import 'package:flutter_test/flutter_test.dart';
import 'package:delivery/controllers/carrinho_controller.dart';
import 'package:delivery/models/item.dart';
void main() {
  test('total acompanha adição e remoção dos produtos', () {
    final controller=CarrinhoController();
    const first=Item('Prato','Comida',12.5,'');
    const second=Item('Suco','Bebida',5.0,'');
    controller.addtoCart(first); controller.addtoCart(second);
    expect(controller.total.value,17.5);
    controller.removeFromCart(first);
    expect(controller.total.value,5.0);
    controller.removeFromCart(second);
    expect(controller.total.value,0.0);
    expect(controller.carrinho,isEmpty);
  });
}
