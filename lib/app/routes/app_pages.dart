import 'package:get/get.dart';

import '../modules/Experts/bindings/experts_binding.dart';
import '../modules/Experts/views/experts_view.dart';
import '../modules/bottomnavigationbar/bindings/bottomnavigationbar_binding.dart';
import '../modules/bottomnavigationbar/views/bottomnavigationbar_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/expertsprofile/bindings/expertsprofile_binding.dart';
import '../modules/expertsprofile/views/expertsprofile_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/otp/bindings/otp_binding.dart';
import '../modules/otp/views/otp_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OtpView(),
      binding: OtpBinding(),
    ),
    // GetPage(
    //   name: _Paths.BOTTOMNAVIGATIONBAR,
    //   page: () => const BottomnavigationbarView(),
    //   binding: BottomnavigationbarBinding(),
    // ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.EXPERTS,
      page: () => const ExpertsView(),
      binding: ExpertsBinding(),
    ),
    GetPage(
      name: _Paths.EXPERTSPROFILE,
      page: () =>  ExpertsprofileView(),
      binding: ExpertsprofileBinding(),
    ),
  ];
}
