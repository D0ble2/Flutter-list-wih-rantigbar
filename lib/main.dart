import 'package:flutter/material.dart';
import 'package:top_animales/pet.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
      ),
      home: const MyHomePage(title: 'Mascoteables'),
    );
  }
}

final topAppBar = AppBar(
  centerTitle: true,
  elevation: 0.1,
  backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
  title: Text(
    'Mascoteables',
    textAlign: TextAlign.center,
  ),
  actions: [IconButton(onPressed: () {}, icon: Icon(Icons.list))],
);

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        appBar: topAppBar,
        body: SizedBox(
          height: 800,
          child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Review(
                    "Mikusita",
                    'Que linda Mikusita mejor gata y mejor mascota de la historia',
                    5),
                Review("Mini Nevera", 'sin duda top 2, hincha del PSG', 4),
                Review("Panda Rojo", 'oso doméstico, nada mas que decir', 4),
                Review("quokka", 'Siempre alegre, ve, ¿cómo no amarlo?', 3),
                Review(
                    "a Rock",
                    'Es una roca con la cara de la roca, seguro le gusta el rock',
                    3),
              ]),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
