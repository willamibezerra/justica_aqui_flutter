import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:jus_ma/app/app_widget.dart';

void main() {
  RendererBinding.instance?.setSemanticsEnabled(true);
  runApp(AppWidget());
}
