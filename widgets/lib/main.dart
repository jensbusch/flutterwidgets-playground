import 'package:flutter/material.dart';

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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Widgets Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({super.key, required this.title});

  final List<Map> demoWidgets = 
     List.generate(10, (index) => 
     {
       "id": index,
       "name" : "Product $index"
     }
     ).toList();

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(1, (index) {
            return

      Center(
        child:
      Card(
        elevation: 20,
        color: Colors.orangeAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              const SizedBox(height: 8),
              const Text('Widget '),
              TextButton(
                onPressed: (){}, 
                child: const Text('Press')
              ),

              const SizedBox(height: 8),
              const Text('Widget 2'),
              TextButton(
                onPressed: (){}, 
                child: const Text('Press')
              ),

              const SizedBox(height: 8),
              const Text('Widget 2'),
              TextButton(
                onPressed: (){}, 
                child: const Text('Press')
              ),

            ],
          ), 
        ),
      ),

      );

          }
          



           }),

          )
      
      
    );
  }
}
