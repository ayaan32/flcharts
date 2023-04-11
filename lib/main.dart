import 'dart:convert';

import 'package:charts/page/line_chart.dart';
import 'package:charts/testclass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List _items = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);
    setState(() {
      Test.items = data["items"];
      // print("number of items ${Test.items.length}");
      // print(Test.items);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Charts'))),
      body: Test.items.isNotEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                LineChartPage(),
              ],
            )
          : Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {
                        readJson();
                      },
                      color: Colors.blue,
                      child: const Text('View line chart'),
                    ),
                    const SizedBox(height: 40.0),
                    MaterialButton(
                      onPressed: () {
                        readJson();
                      },
                      color: Colors.blue,
                      child: const Text('View bar chart'),
                    ),
                  ]),
            ),
    );
  }
}
