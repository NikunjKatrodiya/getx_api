import 'package:get/get.dart';
import 'package:getx_api/data/map_model.dart';

class DataController extends GetxController{

  Results? results;


  @override
  void onInit() {
    // TODO: implement onInit
    results = Get.arguments;
    super.onInit();
  }
}