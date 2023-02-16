import 'package:get/get.dart';

import '../modules/encryptionDisplay/binding/encryptionBinding.dart';
import '../modules/encryptionDisplay/view/Encryption_View.dart';
import '../modules/loginPage/binding/login_binding.dart';
import '../modules/loginPage/view/login_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ENCRYPTION,
      page: () => const EncryptionView(),
      binding: EncryptionBinding(),
    ),

  ];
}
