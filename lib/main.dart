import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Views/Counter%20view/counter_view.dart';
import 'package:getx/Views/Favourite%20view/favourite_view.dart';
import 'package:getx/Views/Image%20picker%20view/image_picker_view.dart';
import 'package:getx/Views/Slider%20view/slider_view.dart';
import 'package:getx/Views/Switch%20view/switch_button_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const ImagePickerView(),
      home: const CounterView(),
    );
  }
}
