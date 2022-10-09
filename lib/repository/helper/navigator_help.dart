import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

navigatoronly(BuildContext context, Widget widget) {
  return Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => widget),
  );
}
