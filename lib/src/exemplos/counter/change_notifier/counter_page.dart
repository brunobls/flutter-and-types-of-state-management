import 'package:flutter/material.dart';

class ContadorPageChangeNotifier extends StatefulWidget {
  const ContadorPageChangeNotifier({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<ContadorPageChangeNotifier> createState() =>
      _ContadorPageChangeNotifierState();
}

class _ContadorPageChangeNotifierState
    extends State<ContadorPageChangeNotifier> {
  final controller = Controller();

  int get _counter => controller.counter;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        // Rebuild the widget with the new value.
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text('$_counter', style: Theme.of(context).textTheme.headline6),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Controller extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}
