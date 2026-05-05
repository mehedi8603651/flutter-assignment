import 'package:get/get.dart';

class OpacityController extends GetxController {
  RxDouble opacity = .4.obs;
  void containerOpacity(double value) {
    opacity.value = value;
  }
}
