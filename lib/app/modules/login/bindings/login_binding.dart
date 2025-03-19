// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
