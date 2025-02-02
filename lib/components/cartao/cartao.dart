import 'package:delivery/controllers/carrinho_controller.dart';
import 'package:delivery/utils/snackbars.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/item.dart';
import 'cartao_controller.dart';


class Cartao extends StatefulWidget {
  Cartao({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  State<Cartao> createState() => _CartaoState();
}

class _CartaoState extends State<Cartao> {
  //instancia do meu controller (injetar dependencias)
  late CartoaController controller; //late pq eu ainda nao inicializei ele

  //instancia ja existe
  final CarrinhoController controllerCarrinho = Get.find<CarrinhoController>(); //busque por um controller ja existente
                                                        //<tipando>
  
  @override
  void initState() {
    super.initState();
    //assim q o item é inicializado
    controller = Get.put(CartoaController(), tag: widget.item.nome );
  }

  /*Get.put -> esta associando o controller ao nosso Cartão 
  tag-> nomear intancias (pares de cartao e cartaocontroller) - precisa ser um valor unico 
  */
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFF6F6F6),
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 134),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(
              image: AssetImage(widget.item.uri),
              width: double.infinity,
              height: 50,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      widget.item.nome,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text("R\$ ${widget.item.preco.toStringAsFixed(2)}"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          if(controller.counter>0 ){
                            controller.decrement();
                            controllerCarrinho.removeFromCart(widget.item);
                            AppSnackBars.getRemoveItem(widget.item);
                          }
                        },
                        child: const Icon(
                          Icons.remove_circle_outline,
                          size: 20,
                        ),
                      ),
                      //metodo proprio do Get - observar um observavel
                      Obx(()=> Text(controller.counter.toString())),
                      InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          controller.increment();
                          controllerCarrinho.addtoCart(widget.item);
                          AppSnackBars.getAddItem(widget.item);
                          },
                        child: const Icon(
                          Icons.add_circle_outline,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
