import 'package:carfix_app/application/language_provider.dart';
import 'package:carfix_app/domain/entities/error_entity.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum DialogType { error, warning, info }

class DialogManager {
  const DialogManager._();

  static Future<T?> openBottomSheet<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    EdgeInsets padding = EdgeInsets.zero,
    Color? backgroundColor,
    Color? barrierColor,
    bool? isDismissible,
  }) async {
    return await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: isDismissible ?? true,
      barrierColor: barrierColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12),
            ),
            color: backgroundColor ?? context.colorScheme.primaryContainer,
          ),
          padding: padding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 40),
              builder(context),
              const SizedBox(height: 56),
            ],
          ),
        );
      },
    );
  }

  static Future<void> openErrorDialog({
    required BuildContext context,
    required ErrorEntity error,
    void Function()? mainButtonAction,
  }) {
    final locale = context.read<LanguageProvider>().locale!;
    return showDialog(
      context: context,
      barrierDismissible: false, // Prevents closing by tapping outside
      builder: (context) => AlertDialog(
        content: Text(
          error.getError(locale),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
/*static Future<T?> openAlertDialog<T>({
    required BuildContext context,
    required String title,
    String confirmBtnText = "OK",
    DialogType type = DialogType.error,
    String? cancelBtnText,
    String? message,
    void Function()? mainButtonAction,
  }) async {
    Widget getTitle() => Text(
          title,
          style: Typographies.bodyBold,
        );

    Widget getContent() => message == null
        ? const SizedBox.shrink()
        : Text(
            message,
            style: Typographies.callOutBoldBlack60,
          );
    Widget getIcon() {
      switch (type) {
        case DialogType.error:
          return AppIcons.icErrorIcon;
        case DialogType.warning:
          return AppIcons.icWarningIcon;
        case DialogType.info:
          return AppIcons.icInfoIcon;
      }
    }

    return await _openDialog<T>(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getIcon(),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 7),
                      getTitle(),
                      const SizedBox(height: 8),
                      getContent(),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Spacer(),
                          OpenGestureDetector(
                            onTap: () {
                              if (mainButtonAction != null) {
                                mainButtonAction();
                              } else {
                                Navigator.of(dialogContext).pop(false);
                              }
                            },
                            child: SizedBox(
                              height: 42,
                              child: Center(
                                child: Text(
                                  cancelBtnText ?? confirmBtnText,
                                  style: cancelBtnText == null
                                      ? Typographies.button2Secondary80
                                      : Typographies.button2Unnamed17,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          if (cancelBtnText != null)
                            OpenGestureDetector(
                              onTap: () {
                                Navigator.of(dialogContext).pop(true);
                              },
                              child: SizedBox(
                                height: 42,
                                child: Center(
                                  child: Text(
                                    confirmBtnText,
                                    style: Typographies.button2Secondary80,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<T?> _openDialog<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool barrierDismissible = true,
    Color? barrierColor = Colors.black54,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
  }) {
    return showDialog<T>(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior,
    );
  }*/
}
