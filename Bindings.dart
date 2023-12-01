import 'package:get/get.dart';
import 'package:scood_app/core/class/CRUD.dart';


class initialbinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());

  }
}