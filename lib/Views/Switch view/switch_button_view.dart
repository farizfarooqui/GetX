import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Views/Favourite%20view/favourite_view.dart';
import 'package:getx/Views/Switch%20view/switch_controller.dart';

class SwitchButtonView extends StatefulWidget {
  const SwitchButtonView({super.key});

  @override
  State<SwitchButtonView> createState() => _SwitchButtonViewState();
}

class _SwitchButtonViewState extends State<SwitchButtonView> {
  SwitchButtonController switchButtonController =
      Get.put(SwitchButtonController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Switch'),
      ),
      body: Column(
        children: [
          ListTile(
              title: const Text('Notifications'),
              trailing: Obx(
                () => Switch(
                    value: switchButtonController.notifications.value,
                    onChanged: (value) {
                      switchButtonController.switchToggle(value);
                    }),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const FavouriteView());
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
