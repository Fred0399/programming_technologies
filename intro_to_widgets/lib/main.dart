import 'package:flutter/material.dart';
import 'package:intro_to_widgets/seminareTask.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Class 604, 606'),
      routes: {
        "solution": (ctx) => LetterChess(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _names = [
    "Hasan",
    "Ruslan",
    "Narmin",
    "Hurnisa",
    "Amina",
    "Rasul",
    "Ali",
  ];

  final List<String> _visibleNames = [];
  int index = 0;


  void addTextsImmediately() {
    if (index >= _names.length) {
      return;
    }

    _visibleNames.add(_names[index]);
    index++;
    setState(() {});
  }

  Future<void> addTextsWithDelay() async {
    for (var element in _names) {
      await Future.delayed(Duration(seconds: 1));

      _visibleNames.add(element);
      setState(() {});
    }
  }

  void clearScreen() {
    _visibleNames.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              spacing: 6,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // print buttons on the screen
                    addTextsImmediately();
                  },
                  child: Text('Add Texts By Click'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // print buttons on the screen
                    addTextsWithDelay();
                  },
                  child: Text('Add Texts Slow'),
                ),
                IconButton(
                  onPressed: clearScreen,
                  icon: Icon(Icons.restart_alt_rounded),
                ),

                TextButton(
                  onPressed: () {
                    // open solution of seminare task
                    Navigator.of(context).pushNamed('solution');
                  },
                  child: Text("Take me to the solution of Seminare task"),
                ),
              ],
            ),

            ..._visibleNames.map((name) => BoxWithColor(name: name)).toList(),
          ],
        ),
      ),
      
    );
  }
}

class BoxWithColor extends StatelessWidget {
  const BoxWithColor({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        border: Border.all(color: Colors.red, width: 5),
      ),

      child: SizedBox(
        width: 100,
        height: 100,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );

    /// Same code with Container widget;
    // return Container(
    //   width: 100,
    //   height: 100,
    //   alignment: Alignment.center,
    //   decoration: BoxDecoration(
    //     color: Colors.blueAccent,
    //     border: Border.all(color: Colors.red, width: 5),
    //   ),
    //   child: Text(
    //             name,
    //             style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 20,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    // );
  }
}

