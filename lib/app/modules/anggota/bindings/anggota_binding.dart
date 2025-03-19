// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controllers/anggota_controller.dart';

class AnggotaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnggotaController>(
      () => AnggotaController(),
    );
  }
}
