import 'package:flutter/material.dart';

class AppPageRouteBuilder extends PageRouteBuilder {
  final Widget widget;
  final bool isNamed;
  final String? routeName;
  AppPageRouteBuilder({
    required this.widget,
    this.isNamed = false,
    this.routeName,
  }) : super(
            transitionDuration: const Duration(microseconds: 500000),
            pageBuilder: (context, animation, secondaryAnimation) => widget,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var tween = Tween(begin: const Offset(1, 0.0), end: Offset.zero)
                  .chain(CurveTween(curve: Curves.easeInOut));
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(position: offsetAnimation, child: child);
            },
            settings: isNamed ? RouteSettings(name: routeName) : null);
            
}
