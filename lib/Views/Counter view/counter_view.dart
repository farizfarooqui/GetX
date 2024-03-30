import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Views/Counter%20view/counter_counter.dart';
import 'package:getx/Views/Slider%20view/slider_view.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(
            child: Text(
          'Counter',
          style: TextStyle(fontSize: 16),
        )),
      ),
      body: Center(
        child: Obx(() {
          return Text(
            counterController.counter.toString(),
            style: const TextStyle(fontSize: 30),
          );
        }),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            FloatingActionButton(
              onPressed: () {
                counterController.increment();
              },
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                counterController.decrement();
              },
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: () {
                Get.to(const SliderView());
              },
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
