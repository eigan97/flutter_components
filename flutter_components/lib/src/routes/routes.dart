import 'package:flutter/material.dart';

import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/pages/animated_container.dart';
import 'package:flutter_components/src/pages/avatar_page.dart';
import 'package:flutter_components/src/pages/cards_page.dart';
import 'package:flutter_components/src/pages/home_page.dart';
import 'package:flutter_components/src/pages/input_page.dart';
import 'package:flutter_components/src/pages/listView_page.dart';
import 'package:flutter_components/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return {
    '/': (BuildContext context) => HomePage(),
    '/alert': (BuildContext context) => AlertPage(),
    '/avatar': (BuildContext context) => AvatarPage(),
    '/card': (BuildContext context) => CardsPage(),
    '/animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    '/input': (BuildContext context) => InputPage(),
    '/slider': (BuildContext context) => SliderPage(),
    '/lista': (BuildContext context) => ListViewPage()
  };
}
