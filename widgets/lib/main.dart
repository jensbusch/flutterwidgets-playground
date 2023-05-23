import 'package:flutter/material.dart';
import 'package:widgets/widget_info.dart';
import 'WidgetCard.dart';

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

WidgetInfo('AbsorbPointer', 'Information about this wid'),
WidgetInfo('Accumulator', 'Information about this wid'),
WidgetInfo('Action', 'Information about this wid'),
WidgetInfo('ActionDispatcher', 'Information about this wid'),
WidgetInfo('ActionListener', 'Information about this wid'),
WidgetInfo('Actions', 'Information about this wid'),
WidgetInfo('ActivateAction', 'Information about this wid'),
WidgetInfo('ActivateIntent', 'Information about this wid'),
WidgetInfo('Align', 'Information about this wid'),
WidgetInfo('Alignment', 'Information about this wid'),
WidgetInfo('AlignmentDirectional', 'Information about this wid'),
WidgetInfo('AlignmentGeometry', 'Information about this wid'),
WidgetInfo('AlignmentGeometryTween', 'Information about this wid'),
WidgetInfo('AlignmentTween', 'Information about this wid'),
WidgetInfo('AlignTransition', 'Information about this wid'),
WidgetInfo('AlwaysScrollableScrollPhysics', 'Information about this wid'),
WidgetInfo('AlwaysStoppedAnimation', 'Information about this wid'),
WidgetInfo('AndroidView', 'Information about this wid'),
WidgetInfo('AndroidViewSurface', 'Information about this wid'),
WidgetInfo('Animatable', 'Information about this wid'),
WidgetInfo('AnimatedAlign', 'Information about this wid'),
WidgetInfo('AnimatedBuilder', 'Information about this wid'),
WidgetInfo('AnimatedContainer', 'Information about this wid'),
WidgetInfo('AnimatedCrossFade', 'Information about this wid'),
WidgetInfo('AnimatedDefaultTextStyle', 'Information about this wid'),
WidgetInfo('AnimatedFractionallySizedBox', 'Information about this wid'),
WidgetInfo('AnimatedGrid', 'Information about this wid'),
WidgetInfo('AnimatedGridState', 'Information about this wid'),
WidgetInfo('AnimatedList', 'Information about this wid'),
WidgetInfo('AnimatedListState', 'Information about this wid'),
/*
AnimatedModalBarrier', 'Information about this wid'),
AnimatedOpacity', 'Information about this wid'),
AnimatedPadding', 'Information about this wid'),
AnimatedPhysicalModel', 'Information about this wid'),
AnimatedPositioned', 'Information about this wid'),
AnimatedPositionedDirectional', 'Information about this wid'),
AnimatedRotation', 'Information about this wid'),
AnimatedScale', 'Information about this wid'),
AnimatedSize', 'Information about this wid'),
AnimatedSlide', 'Information about this wid'),
AnimatedSwitcher', 'Information about this wid'),
AnimatedWidget', 'Information about this wid'),
AnimatedWidgetBaseState', 'Information about this wid'),
Animation', 'Information about this wid'),
AnimationController', 'Information about this wid'),
AnimationMax', 'Information about this wid'),
AnimationMean', 'Information about this wid'),
AnimationMin', 'Information about this wid'),
AnnotatedRegion', 'Information about this wid'),
AspectRatio', 'Information about this wid'),
AssetBundle', 'Information about this wid'),
AssetBundleImageKey', 'Information about this wid'),
AssetBundleImageProvider', 'Information about this wid'),
AssetImage', 'Information about this wid'),
AsyncSnapshot', 'Information about this wid'),
AutocompleteHighlightedOption', 'Information about this wid'),
AutocompleteNextOptionIntent', 'Information about this wid'),
AutocompletePreviousOptionIntent', 'Information about this wid'),
AutofillGroup', 'Information about this wid'),
AutofillGroupState', 'Information about this wid'),
AutofillHints', 'Information about this wid'),
AutomaticKeepAlive', 'Information about this wid'),
AutomaticNotchedShape', 'Information about this wid'),
*/
  ];

  List<WidgetCard> getWidgetList(){
    List<WidgetCard> result = [];
    for(var i = 0; i < demoWidgets.length; i++){
      
    //  result.add(WidgetCard('name $i', 'subtitle $i'));
      result.add(WidgetCard(demoWidgets[i].name, demoWidgets[i].info));
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
