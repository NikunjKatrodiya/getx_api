import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_api/screens/map_data_info/data_controller.dart';

class DataHomeScreen extends GetView<DataController> {

  const DataHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  const Text("Data Screen"),
      ),
      body: Center(
        child: Column(

          children: [
          Text("Data ${controller.results!.id} Screen"),
          Text(
              "${controller.results!.name}"),
          Text(
              "${controller.results!.location!.name}"),
          SizedBox(
            height: 200,
            width: 200,
            child: Image.network(controller
                .results!.image!),
          )
        ],),
      ),
    );
  }
}
