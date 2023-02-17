import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App2',
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
                seedColor: Color.fromARGB(255, 211, 80, 73))),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          color: Theme.of(context).colorScheme.background,
          child: Column(children: [NumberCard(num: 0)])),
    );
  }
}

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.num});
  final int num;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var style = theme.textTheme.bodyMedium!
        .copyWith(color: theme.colorScheme.onPrimary);

    return Card(
        color: theme.colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(num.toString(), style: style),
        ));
  }
}
