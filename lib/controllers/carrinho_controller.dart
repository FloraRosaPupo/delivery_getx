import 'package:delivery/models/item.dart';
import 'package:get/get.dart';

//se puder tipar alguma informacao 

class CarrinhoController extends GetxController{
  //controller criado agora é hora de criar os obervaveis 
  var carrinho = <Item>[].obs; //lista vazia

  //obs de preco
  var total = 0.0.obs;


  //funcoes ->adicionar
  void addtoCart(Item item){
    carrinho.add(item);
    updateTotal();
  }

  void removeFromCart(Item item){
    carrinho.remove(item);
    updateTotal();
  }

  void updateTotal(){
    total.value = 0.0; 
  //pra cada elemento dessa lista de carrinho
    carrinho.forEach((element){
      total.value += element.preco;
    });
  }
  
}