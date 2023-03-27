import 'package:get/get.dart';
import 'package:getx_api/screens/map_data_info/data_controller.dart';

class DataBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<DataController>(DataController());
  }

}