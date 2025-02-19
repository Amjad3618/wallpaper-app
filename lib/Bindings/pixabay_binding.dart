import 'package:get/get.dart';
import 'package:portfolio/controllers/pixabay_controller.dart';

class PixabayBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PixabayController());
  }
}