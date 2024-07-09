import 'package:eventapp/Controller/Controller.dart';
import 'package:get/get.dart';

class homebinding extends Bindings{
   @override
  void dependencies() {
    Get.lazyPut<DateController>(() => DateController());
  }
}