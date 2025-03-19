// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
  }
}
