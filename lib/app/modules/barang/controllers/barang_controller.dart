// 📦 Package imports:
import 'package:get/get.dart';

class BarangController extends GetxController {
  final count = 0.obs;
  void increment() => count.value++;
}
