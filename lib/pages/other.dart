import 'package:dashboard/controllers/counterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtherPage extends StatelessWidget {
OtherPage({super.key});

final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Plus button was clicked ${_counterController.counter.value}"),
            IconButton(onPressed: () {_counterController.increment();} , icon: const Icon(Icons.add, color: Colors.amber,)),
            FloatingActionButton(onPressed: () {Get.back();} , child: const Icon(Icons.arrow_forward_ios)),
          ],
        ),
      ),)
    );
  }
}