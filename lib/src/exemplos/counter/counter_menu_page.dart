import 'package:flutter/material.dart';
import 'package:flutter_state_management/src/exemplos/counter/getx/counter_page.dart';
import 'package:flutter_state_management/src/exemplos/counter/value_notifier_abstracted/counter_page.dart';

import 'bloc/counter_page.dart';
import 'change_notifier/counter_page.dart';
import 'cubit/counter_page.dart';
import 'native_state/counter_page.dart';
import 'value_notifier_simplified/counter_page.dart';

class CounterMenuPage extends StatelessWidget {
  const CounterMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu de navegação do counter"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContadorPageNative(
                      title: 'Native State',
                    ),
                  ),
                );
              },
              child: const Text("Native State"),
              style: style,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContadorPageChangeNotifier(
                      title: 'Change Notifier',
                    ),
                  ),
                );
              },
              child: const Text("Change Notifier"),
              style: style,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContadorPageValueNotifierSimplified(
                      title: 'Value Notifier',
                    ),
                  ),
                );
              },
              child: const Text("Value Notifier"),
              style: style,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContadorPageValueNotifierAbstracted(
                      title: 'Value Notifier Abstracted',
                    ),
                  ),
                );
              },
              child: const Text("Value Notifier Abstracted"),
              style: style,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContadorPageCubit(
                      title: 'Cubit',
                    ),
                  ),
                );
              },
              child: const Text("Cubit"),
              style: style,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContadorPageBloc(
                      title: 'Bloc',
                    ),
                  ),
                );
              },
              child: const Text("Bloc"),
              style: style,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContadorPageGetX(
                      title: 'GetX',
                    ),
                  ),
                );
              },
              child: const Text("GetX"),
              style: style,
            ),
          ],
        ),
      ),
    );
  }
}
