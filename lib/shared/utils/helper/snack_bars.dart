import 'package:flutter/material.dart';

import '/shared/widgets/app_text.dart';
import '../../constants/app_colors.dart';

enum MessageType {
  success(AppColors.successMessageColor),
  warning(AppColors.warningMessageColor),
  error(AppColors.errorMessageColor);

  final Color value;

  const MessageType(this.value);
}

class AppSnackBar {
  static Future<void> showSnackBarMessage(
    BuildContext context,
    String message, {
    int messageDuration = 3,
    MessageType? type,
    bool? isFloating,
    VoidCallback? onClose,
  }) async {
    var snackBar = ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: AppText(message),
        behavior: (isFloating ?? false) ? SnackBarBehavior.floating : null,
        backgroundColor: type?.value,
        duration: Duration(seconds: messageDuration),
      ),
    );
    var snackBarClosedReason = await snackBar.closed;
    if (SnackBarClosedReason.values.contains(snackBarClosedReason)) {
      onClose?.call();
    }
  }
}
