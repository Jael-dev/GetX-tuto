import 'package:dashboard/controllers/counterController.dart';
import 'package:dashboard/pages/other.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=> Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Clicks: ${counterController.counter.value}"),
            const SizedBox(height: 10),
            IconButton(onPressed: () {counterController.increment();} , icon: const Icon(Icons.add, color: Colors.amber,)),
            FloatingActionButton(onPressed: () {Get.to(OtherPage());} , child: const Icon(Icons.arrow_back_ios)),
          ],
        ),
      ))
    );
  }
}