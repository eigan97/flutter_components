import 'package:flutter/material.dart';

import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/pages/avatar_page.dart';
import 'package:flutter_components/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return {
    '/': (BuildContext context) => HomePage(),
    '/alert': (BuildContext context) => AlertPage(),
    '/avatar': (BuildContext context) => AvatarPage(),
  };
}
