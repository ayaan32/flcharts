import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample extends StatelessWidget {
  const BarChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 25,
          minY: 5,
          titlesData: FlTitlesData(),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(
                  fromY: 0,
                  color: const Color(0xff0293ee),
                  toY: 20,
                ),
              ],
              showingTooltipIndicators: [0],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(
                  fromY: 0,
                  color: const Color(0xfff8b250),
                  toY: 15,
                ),
              ],
              showingTooltipIndicators: [0],
            ),
            BarChartGroupData(
              x: 2,
              barRods: [
                BarChartRodData(
                  fromY: 0,
                  color: const Color(0xff845bef),
                  toY: 7,
                ),
              ],
              showingTooltipIndicators: [0],
            ),
            BarChartGroupData(
              x: 3,
              barRods: [
                BarChartRodData(
                  fromY: 0,
                  color: const Color(0xff13d38e),
                  toY: 7,
                ),
              ],
              showingTooltipIndicators: [0],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(
                  fromY: 0,
                  color: const Color(0xff13d38e),
                  toY: 7,
                ),
              ],
              showingTooltipIndicators: [0],
            ),
            BarChartGroupData(
              x: 5,
              barRods: [
                BarChartRodData(
                  fromY: 0,
                  color: const Color(0xff13d38e),
                  toY: 7,
                ),
              ],
              showingTooltipIndicators: [0],
            ),
            BarChartGroupData(
              x: 6,
              barRods: [
                BarChartRodData(
                  fromY: 0,
                  color: const Color(0xff13d38e),
                  toY: 7,
                ),
              ],
              showingTooltipIndicators: [0],
            ),
          ]),
    );
  }
}
