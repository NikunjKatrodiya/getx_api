import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/screens/map_controller_screen.dart';
import 'package:getx_api/utils/routes_name.dart';

class MapHomeScreen extends GetView<MapController> {
  const MapHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          controller.appModel == null
              ? const Center(child: CircularProgressIndicator())
              : Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) =>
                          const SizedBox(height: 10),
                      separatorBuilder: (context, index) => InkWell(
                            onTap: () {
                              Get.toNamed(RoutesName.dataHomeScreen,arguments: controller.appModel!.results![index]);
                            },
                            child: Container(
                              color: Colors.greenAccent,
                              child: Column(
                                children: [
                                  Text("${controller.appModel!.info!.count}"),
                                  Text(
                                      "${controller.appModel!.results![index].name}"),
                                  Text(
                                      "${controller.appModel!.results![index].location!.name}"),
                                  Text(
                                      "${controller.appModel!.results![index].id}"),
                                  SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Image.network(controller
                                        .appModel!.results![index].image!),
                                  )
                                ],
                              ),
                            ),
                          ),
                      itemCount: controller.appModel!.results!.length,),
                ),
        ],
      ),
    );
  }
}
