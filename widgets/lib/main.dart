import 'package:flutter/material.dart';
import 'package:widgets/widget_info.dart';
import 'WidgetCard.dart';
import 'Widgets/AlertDialogPage.dart';
import 'Widgets/AboutDialogPage.dart';
import 'Widgets/SimpleDialogPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Widgets Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  List<WidgetInfo> demoWidgets = [

WidgetInfo('AlertDialog', 'This dialog can be used to display an alert', const AlertDialogPage() ),
WidgetInfo('SimpleDialog', 'This dialog can be used to offer choices to the user and have the user select something.', const SimpleDialogPage()),
WidgetInfo('AboutDialog', 'The about dialog shows e.g. license information', const AboutDialogPage()),


  ];

  List<WidgetCard> getWidgetList(){
    List<WidgetCard> result = [];
    for(var i = 0; i < demoWidgets.length; i++){
      
    //  result.add(WidgetCard('name $i', 'subtitle $i'));
      result.add(WidgetCard(demoWidgets[i].name, demoWidgets[i].info, demoWidgets[i].widgetPage ));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: GridView.count(
          crossAxisCount: 5,
          children: getWidgetList()
        ));
  }
}
