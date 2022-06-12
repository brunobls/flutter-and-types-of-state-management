import 'package:flutter/material.dart';
import 'package:flutter_state_management/src/exemplos/counter/getx/counter.dart';
import 'package:get/get.dart';

class ContadorPageGetX extends StatelessWidget {
  const ContadorPageGetX({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final CounterGetx counterGetx = Get.put(CounterGetx());

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Obx(() => Text(
                  '${counterGetx.count}',
                  style: Theme.of(context).textTheme.headline6,
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterGetx.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
