import 'package:flutter/widgets.dart';

/// Abstract class for the loading service.
abstract class ILoadingService {
  /// Show a toast.
  void showToast(String message);

  /// Show a loading indicator.
  void showLoading({String? message, bool dismissible = false});

  /// Show a loading indicator with a progress indicator.
  void showProgress(double value, {String? message});

  /// Show a loading indicator with a custom widget for info messages.
  void showInfo(String message);

  /// Show a loading indicator with a custom widget for success messages.
  void showSuccess(String message);

  /// Show a loading indicator with a custom widget for error messages.
  void showError(String message);

  /// Hide the loading indicator.
  void dismiss();

  /// Wrap the [child] with the loading indicator.
  ///
  /// This should be done near the top of the widget tree,
  /// so the loading indicator is displayed over the whole app.
  Widget loadingWrapper(Widget child);

  /// Test loading indicator functions
  void test();
}
