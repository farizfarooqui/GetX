import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Views/Slider%20view/slider_counter.dart';

class SliderView extends StatefulWidget {
  const SliderView({super.key});

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  SliderController sliderController = Get.put(SliderController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(child: Text('Slider')),
      ),
      body: Stack(
        children: [
          Obx(() {
            return Container(
              height: Get.height,
              width: Get.width,
              color: Colors.amber.withOpacity(sliderController.opacity.value),
            );
          }),
          Obx(() {
            return Center(
                child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Slider(
                        value: (sliderController.opacity.value),
                        onChanged: (value) {
                          sliderController.setOpacity(value);
                        })));
          }),
        ],
      ),
    );
  }
}
