import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Views/Image%20picker%20view/image_picker_controller.dart';

class ImagePickerView extends StatefulWidget {
  const ImagePickerView({super.key});

  @override
  State<ImagePickerView> createState() => _ImagePickerViewState();
}

class _ImagePickerViewState extends State<ImagePickerView> {
  ImagePickerController imagePickerController =
      Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick an image'),
      ),
      body: const Center(
        child: Text('Hello ! from Fariz'),
      ),
      drawer: Drawer(
        width: Get.width * 0.8,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 0,
            right: 0,
          ),
          child: Column(
            children: [
              ListTile(
                leading: InkWell(
                    onTap: () {
                      imagePickerController.getImage();
                    },
                    child: Obx(
                      () => CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          backgroundImage: imagePickerController
                                  .imagePath.isNotEmpty
                              ? FileImage(File(
                                  imagePickerController.imagePath.toString()))
                              : null),
                    )),
                title: const Text('Fariz Farooqui'),
                subtitle: const Text('farizfarooqui104@gmail.com'),
              ),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }
}
