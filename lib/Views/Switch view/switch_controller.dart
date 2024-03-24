import 'package:get/get.dart';

class SwitchButtonController extends GetxController {
  RxBool notifications = false.obs;

  switchToggle(bool value) {
    notifications.value = value;
  }
}
