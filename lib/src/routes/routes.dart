import 'package:flutter/material.dart';
import '../pages/home_temp.dart';
import '../pages/type_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return {
    '/': (BuildContext context) => const HomeTemp(), // 👈 corregido
    '/type': (BuildContext context) => const TypePage(),
  };
}
