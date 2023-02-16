import 'package:get/get.dart';

import '../controller/EncryptionController.dart';


class EncryptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EncryptionController>(
          () => EncryptionController(),
    );
  }
}
