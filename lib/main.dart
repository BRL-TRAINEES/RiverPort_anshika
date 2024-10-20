import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Riverpod Provider - store some state which can be accessed from multiple loactions
// decrese rebuild of the widgets
//PROVIDER - we use this when state of widget is immutuable means state doesn't changes

//create provider
final nameProvider = Provider<String>((ref) {
  //declared globally
  return 'hello';
});

//to access
//m1. by using consumerwidget in place of stateless widgets then build will take one another parameter ref(helps to access variables in other widgets)of type widgetref then can accss using ref.watch()
//m2. using consumer widgets for a specific widget that take builder method and builder take three parameters -context,child,ref and then we can excess by ref.watch()....
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      //home: HomePage();
      home: Main(),
    );
  }
}

// class HomePage extends StatelessWidget{
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {

//     // final name = ref.watch(nameProvider);

//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Riverpod Example')
//         ),
//         body: Center(
//             child: Consumer(builder: (context,ref,child){
//               final name = ref.watch(nameProvider);
//               return Text(name);
//             }),
//         ),
//     );
//   }
// }

// access in stateful widgets
class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
