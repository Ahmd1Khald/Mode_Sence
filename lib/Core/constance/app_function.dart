import 'package:flutter/material.dart';
import 'package:share/share.dart';

class AppFunctions {
  static void sendAlertMessage({required String ratio, required String state}) {
    Share.share(
      'Your state is $state and the sugar level is $ratio\n form ICGM app',
      subject: '',
    );
  }

  static void pushAndRemove({required context, required Widget screen}) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => screen), (route) => false);
  }

  static void pushTo({required context, required Widget screen}) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
    // Navigator.of(context).push(
    //   PageRouteBuilder(
    //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //       return SharedAxisTransition(
    //         transitionType: SharedAxisTransitionType.horizontal,
    //         secondaryAnimation: secondaryAnimation,
    //         animation: animation,
    //         child: child,
    //       );
    //     },
    //     transitionDuration: const Duration(seconds: 1),
    //     barrierColor: Colors.black,
    //     pageBuilder: (context, animation, secondaryAnimation) {
    //       return screen;
    //     },
    //   ),
    // );
  }
}
