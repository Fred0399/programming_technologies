import 'package:flutter/material.dart';
import 'package:intro_to_widgets/Buttons.dart';
import 'package:intro_to_widgets/boxWithColor.dart';
import 'package:intro_to_widgets/input/form_input.dart';
import 'package:intro_to_widgets/input/texxt_input.dart';
import 'package:intro_to_widgets/networking/presentation/weather_app.dart';
import 'package:intro_to_widgets/provider/counter.dart';
import 'package:intro_to_widgets/provider_username/profile_username.dart';
import 'package:intro_to_widgets/seminareTask.dart';
import 'package:intro_to_widgets/semn/buttons_delayed_text.dart';
import 'package:provider/provider.dart';

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
      home: ChangeNotifierProvider(
        create: (context) => Counter(),
        child: const MyHomePage(title: 'Class 604, 606'),
      ),
      routes: {"solution": (ctx) => LetterChess()},
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
        // child: Buttons(),
        // child: Consumer<Counter>(
        //   builder: (ctx, count, _) {
        //     return Text(count.count.toString());
        //   },
        // ),

        // child: TexxtInput(),
        // child: ButtonsDelayedText(),
        // child: ProfileUsername(),
        child: WeatherApp(),

        // child: FormInput(),

        // child: Column(
        //   spacing: 10,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   mainAxisAlignment: MainAxisAlignment.start,
        // children: [
        //   Row(
        //     spacing: 6,
        //     children: [
        //       ElevatedButton(
        //         onPressed: () {
        //           // print buttons on the screen
        //           addTextsImmediately();
        //         },
        //         child: Text('Add Texts By Click'),
        //       ),
        //       ElevatedButton(
        //         onPressed: () {
        //           // print buttons on the screen
        //           addTextsWithDelay();
        //         },
        //         child: Text('Add Texts Slow'),
        //       ),
        //       IconButton(
        //         onPressed: clearScreen,
        //         icon: Icon(Icons.restart_alt_rounded),
        //       ),

        //       TextButton(
        //         onPressed: () {
        //           // open solution of seminare task
        //           Navigator.of(context).pushNamed('solution');
        //         },
        //         child: Text("Take me to the solution of Seminare task"),
        //       ),
        //     ],
        //   ),

        //   ..._visibleNames.map((name) => BoxWithColor(name: name)).toList(),
        // ],
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // addPrintTextToTheScreen("Floating action");
          context.read<Counter>().increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
