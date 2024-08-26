import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension Navigagtion on BuildContext {
  Future<dynamic> push(Widget widget) {
    return Navigator.of(this).push(MaterialPageRoute(
      builder: (context) => widget,
    ));
  }

  Future<dynamic> pushNameed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}
