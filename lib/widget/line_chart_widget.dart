import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../testclass.dart';
import 'line_title.dart';

class LineChartWidget extends StatefulWidget {
  LineChartWidget({super.key});

  @override
  State<LineChartWidget> createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  List<FlSpot> itemsspot = [];

  @override
  Widget build(BuildContext context) {
    //print(Test.items);
    // List<double> yval = [];
    // List<int> xval = [];
    // Test.items.forEach(
    //   (element) => (yval.add(element['holdingValue'])),
    // );
    // Test.items.forEach(
    //   (element) => (xval.add(element['Day'])),
    // );
    // yval.forEach(
    //   (element) => print(element),
    // );
    // xval.forEach(
    //   (element) => print(element),
    // );
    return AspectRatio(
        aspectRatio: 2,
        child: LineChart(
          LineChartData(
            minX: 0,
            maxX: 10,
            minY: 200000,
            maxY: 250000,
            titlesData: LineTitles.getTitleData(),
            gridData: FlGridData(
              show: true,
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: const Color(0xff37434d),
                  strokeWidth: 1,
                );
              },
              drawVerticalLine: true,
              getDrawingVerticalLine: (value) {
                return FlLine(
                  color: const Color(0xff37434d),
                  strokeWidth: 1,
                );
              },
            ),
            borderData: FlBorderData(
              show: true,
              border: Border.all(color: const Color(0xff37434d), width: 1),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(Test.items[0]["Day"].toDouble(),
                      Test.items[0]["holdingValue"].toDouble()),
                  // const FlSpot(2.6, 2),
                  FlSpot(Test.items[1]["Day"].toDouble(),
                      Test.items[1]["holdingValue"].toDouble()),

                  FlSpot(Test.items[2]["Day"].toDouble(),
                      Test.items[2]["holdingValue"].toDouble()),

                  FlSpot(Test.items[3]["Day"].toDouble(),
                      Test.items[3]["holdingValue"].toDouble()),

                  FlSpot(Test.items[4]["Day"].toDouble(),
                      Test.items[4]["holdingValue"].toDouble()),

                  FlSpot(Test.items[5]["Day"].toDouble(),
                      Test.items[5]["holdingValue"].toDouble()),

                  FlSpot(Test.items[6]["Day"].toDouble(),
                      Test.items[6]["holdingValue"].toDouble()),
                  // const FlSpot(4.9, 5),
                  // const FlSpot(6.8, 2.5),
                  // const FlSpot(8, 4),
                  // const FlSpot(9.5, 3),
                  // const FlSpot(11, 4),
                ],
                isCurved: true,
                barWidth: 5,
                // dotData: FlDotData(show: false),
                belowBarData: BarAreaData(
                  show: true,
                ),
              ),
            ],
          ),
        ));
  }
}
