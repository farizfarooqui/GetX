import 'package:get/get.dart';

class SliderController extends GetxController {
  RxDouble opacity = 0.5.obs;

  setOpacity(double value) {
    opacity.value = value;
    print('object');
  }
}
