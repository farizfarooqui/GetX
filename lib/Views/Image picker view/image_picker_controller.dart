import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  RxString imagePath = ''.obs;
  Future getImage() async {
    final ImagePicker _imagePicker = ImagePicker();
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePath.value = image.path.toString();
    } else {}
  }
}
