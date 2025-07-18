import 'package:get/get.dart';
import 'package:travel_app2/app/routes/app_pages.dart';
//import onboaar

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(Routes.ONBOARDING); // Navigate to Onboarding after splash
    });
  }
}
