import 'package:farmereats/core/class/pageRoute_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension Navigagtion on BuildContext {
  Future<dynamic> push(Widget widget) {
    return Navigator.of(this).push(AppPageRouteBuilder(widget: widget));
  }

  Future<dynamic> pushNameed(String routeName, {Object? arguments}) {
    return Navigator.of(this).push(AppPageRouteBuilder(
        widget: widget, isNamed: true, routeName: routeName));
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushReplacement(AppPageRouteBuilder(
        widget: widget, isNamed: true, routeName: routeName));
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}
