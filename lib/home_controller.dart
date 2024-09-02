import 'package:flutter/cupertino.dart';

class HomeController
    extends InheritedNotifier<ValueNotifier<List<Map<String, dynamic>>>> {
  HomeController({Key? key, required Widget child})
      : super(key: key, child: child, notifier: ValueNotifier([]));

  static HomeController of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomeController>()!;
  }

  ValueNotifier<List<Map<String, dynamic>>> get transactions => notifier!;

  void addTransaction(double value, String description) {
    notifier!.value = [
      ...notifier!.value,
      {'value': value, 'description': description}
    ];
  }
}
