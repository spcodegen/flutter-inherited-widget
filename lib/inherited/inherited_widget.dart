import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final String userName;

  MyInheritedWidget({
    super.key,
    required super.child,
    required this.userName,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static MyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;
  }
}
