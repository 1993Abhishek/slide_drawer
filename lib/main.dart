import 'package:awesome_drawer_bar/awesome_drawer_bar.dart';
import 'package:flutter/material.dart';
import 'package:slide_drawer/home_screen.dart';
import 'package:slide_drawer/k_drawer.dart';
import 'package:slide_drawer/liquid_swipe.dart';
import 'package:slide_drawer/water_drop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WithBuilder(),
    );
  }
}
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//   Widget mainWidget()
//   {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text(widget.title),
//     ),
//     body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           const Text(
//             'You have pushed the button this many times:',
//           ),
//           Text(
//             '$_counter',
//             style: Theme.of(context).textTheme.headline4,
//           ),
//         ],
//       ),
//     ),
//     floatingActionButton: FloatingActionButton(
//       onPressed: _incrementCounter,
//       tooltip: 'Increment',
//       child: const Icon(Icons.add),
//     ), // This trailing comma makes auto-formatting nicer for build methods.
//   );
// }
//
//   AwesomeDrawerBarController barController=AwesomeDrawerBarController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Drawer',),
//         centerTitle: true,
//       ),
//       drawer: MainWidget(),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//
//         ],
//       ),
//     );
//   }
// }
