import 'package:get/get.dart';
import 'package:getx_api/screens/map_binding.dart';
import 'package:getx_api/screens/map_data_info/data_binding.dart';
import 'package:getx_api/screens/map_data_info/data_home_screen.dart';

import 'package:getx_api/screens/map_home_screen.dart';
import 'package:getx_api/utils/routes_name.dart';

List<GetPage<dynamic>>routesList=[
  GetPage(name: RoutesName.mapHomeScreen, page: () => const MapHomeScreen(),binding: MapBinding()),
  GetPage(name: RoutesName.dataHomeScreen, page: () => const DataHomeScreen(),binding: DataBinding()),
];