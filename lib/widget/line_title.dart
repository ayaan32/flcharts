import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              getTitlesWidget: (value, meta) {
                const style = TextStyle(
                  color: Color(0xff68737d),
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                );
                Widget text;
                switch (value.toInt()) {
                  case 2:
                    text = const Text('Day 2', style: style);
                    break;
                  case 5:
                    text = const Text('Day 5', style: style);
                    break;
                  case 8:
                    text = const Text('Day 8', style: style);
                    break;
                  default:
                    text = const Text('', style: style);
                    break;
                }

                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  space: 8.0,
                  child: text,
                );
              }),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (double value, TitleMeta meta) {
              const style = TextStyle(
                color: Color(0xff67727d),
                fontWeight: FontWeight.bold,
                fontSize: 10,
              );
              String text;
              switch (value.toInt()) {
                case 200000:
                  text = '200K';
                  break;
                case 225000:
                  text = '225K';
                  break;
                case 250000:
                  text = '250K';
                  break;
                default:
                  return Container();
              }

              return Text(text, style: style, textAlign: TextAlign.left);
            },
            reservedSize: 40,
            interval: 1,
          ),
        ),
      );
}



// class LineTitles {
//   static getTitleData() => FlTitlesData(
//         show: true,
//         bottomTitles: AxisTitles(
//           sideTitles:SideTitles(
//           showTitles: true,
//           reservedSize: 35,
//           getTextStyles: (value) => const TextStyle(
//             color: Color(0xff68737d),
//             fontWeight: FontWeight.bold,
//             fontSize: 16,
//           ),
//           getTitles: (value) {
//             switch (value.toInt()) {
//               case 2:
//                 return 'MAR';
//               case 5:
//                 return 'JUN';
//               case 8:
//                 return 'SEP';
//             }
//             return '';
//           },
//           margin: 8,
//         ),),


//         leftTitles: AxisTitles(
//           sideTitles: SideTitles(
//           showTitles: true,
//           getTextStyles: (value) => const TextStyle(
//             color: Color(0xff67727d),
//             fontWeight: FontWeight.bold,
//             fontSize: 15,
//           ),
//           getTitles: (value) {
//             switch (value.toInt()) {
//               case 1:
//                 return '10k';
//               case 3:
//                 return '30k';
//               case 5:
//                 return '50k';
//             }
//             return '';
//           },
//           reservedSize: 35,
//           margin: 12,
//         ),)
//       );
// }