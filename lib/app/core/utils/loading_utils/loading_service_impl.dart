import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spot_on/app/core/utils/app_theme/colorpallete.dart';
import 'package:spot_on/app/core/utils/loading_utils/i_loading_service.dart';


/// Loading service implementation
class LoadingServiceImpl implements ILoadingService {
  /// constructor for [LoadingServiceImpl]
  const LoadingServiceImpl();

  @override
  void dismiss() {
    EasyLoading.dismiss();
  }

  @override
  void showError(String message) {
    EasyLoading.instance.maskType = EasyLoadingMaskType.clear;
    EasyLoading.showError(message);
  }

  @override
  void showInfo(String message) {
    EasyLoading.instance.maskType = EasyLoadingMaskType.clear;
    EasyLoading.showInfo(message);
  }

  @override
  void showLoading({String? message, bool dismissible = false}) {
    EasyLoading.instance.maskType = EasyLoadingMaskType.clear;
    EasyLoading.show(status: message, dismissOnTap: dismissible);
  }

  @override
  void showSuccess(String message) {
    EasyLoading.instance.maskType = EasyLoadingMaskType.clear;
    EasyLoading.showSuccess(message);
  }

  @override
  void showToast(String message) {
    EasyLoading.instance.maskType = EasyLoadingMaskType.black;
    EasyLoading.showToast(message);
  }

  @override
  void showProgress(double value, {String? message}) {
    EasyLoading.instance.maskType = EasyLoadingMaskType.clear;
    EasyLoading.showProgress(value, status: message);
  }

  @override
  Widget loadingWrapper(Widget child) {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.dark
      ..maskType = EasyLoadingMaskType.clear
      ..backgroundColor = Colors.transparent
      ..indicatorType = EasyLoadingIndicatorType.pulse
      ..indicatorColor = Colorpallete.primary300
      ..indicatorSize = 45.w
      // ..textColor = FlitaaColors.white
      ..radius = 10.r
      ..userInteractions = false
      ..dismissOnTap = false

      // ..textStyle = FlitaaTextStyle.avenirNextMedium14.copyWith(
      //   color: FlitaaColors.white,
      // )
      // ..maskColor = FlitaaColors.two62626.withOpacity(0.1)
      ..toastPosition = EasyLoadingToastPosition.top;

    return FlutterEasyLoading(child: child);
  }

  @override
  Future<void> test() async {
    showInfo('Select an option to continue');
    await Future<void>.delayed(const Duration(seconds: 3));
    showError('Username not available');
    await Future<void>.delayed(const Duration(seconds: 3));
    showSuccess('Purchase successful');
    await Future<void>.delayed(const Duration(seconds: 3));
    showToast('Message received');
    await Future<void>.delayed(const Duration(seconds: 3));
    dismiss();
    showLoading(message: 'Signing up');
    await Future<void>.delayed(const Duration(seconds: 3));
    dismiss();
  }
}

/// loading service provider provider
final loadingServiceProvider = Provider<ILoadingService>((ref) {
  return const LoadingServiceImpl();
});
