import 'package:flutter/material.dart';

class ContadorPageValueNotifierSimplified extends StatelessWidget {
  final String title;
  final controller = Controller();

  ContadorPageValueNotifierSimplified({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            ValueListenableBuilder<int>(
              valueListenable: controller.counter$,
              builder: (context, value, child) {
                return Text(
                  "$value",
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
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

class Controller {
  final counter$ = ValueNotifier(0);
  int get counter => counter$.value;
  void increment() => counter$.value++;
}
