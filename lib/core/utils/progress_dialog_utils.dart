import 'package:flutter/material.dart';
import 'package:biografi/core/utils/navigator_service.dart';

class ProgressDialogUtils {
  static bool isProgressVisible = false;
  
  ///common method for showing progress dialog
  static void showProgressDialog(
     {BuildContext? context, bool isCancellable = false}) async {
    if (!isProgressVisible &&
        NavigatorService.navigatorkey.currentState?.overlay?.context != null) {
      showDialog(

            barrierDismissible: isCancellable,
            context: NavigatorService.navigatorkey.currentState!.overlay!.context,
            builder: (BuildContext context) {
              return Center(
                child: CircularProgressIndicator.adaptive(
                strokeWidth: 4,
                valueColor: AlwaysStoppedAnimation<Color> (
                  Colors.white,
              ),
            ),
          );
        });
      isProgressVisible = true;
    }
  }

  ///common method for hiding progress dialog static 
  void hideProgressDialog() {
    if (isProgressVisible)
    Navigator.pop(
        NavigatorService.navigatorkey.currentState!.overlay!.context);
    isProgressVisible = false;
  }
}