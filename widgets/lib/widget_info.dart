import 'package:flutter/material.dart';
import 'package:widgets/Widgets/WidgetPage.dart';

class WidgetInfo {
  String name = '';
  String info = '';
  Widget widgetPage = const WidgetPage();
  WidgetInfo( String n, String i,[ Widget? wpage ]){
    name = n;
    info = i;
    if(wpage!=null){
      widgetPage = wpage;
    }
  }
}



