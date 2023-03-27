import 'package:get/get.dart';
import 'package:getx_api/screens/map_home_screen.dart';

import 'map_controller_screen.dart';

class MapBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put<MapController>(MapController());
  }

}