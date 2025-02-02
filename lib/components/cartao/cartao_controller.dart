import 'package:get/get.dart';


//todas as funcionalidades vindas diretamente do cartao - parte logica
class CartoaController extends GetxController{

  //variavel observavel
 var counter =0.obs;
 void decrement(){
  
    counter --;
  
 }


 void increment(){
  counter++;
 }
}