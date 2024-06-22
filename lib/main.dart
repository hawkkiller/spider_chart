import 'package:flutter/material.dart';
import 'package:spider_chart/spider_chart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final labels = [
      '123123',
      '112312312323',
      '112321312323',
      '123',
      '123',
    ];

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 400,
            height: 220,
            child: SpiderChart(
              labels: List.generate(
                5,
                (index) => SpiderChartLabel(
                  label: labels[index],
                  // maxWidth: 90,
                  style: const TextStyle(
                    color: Color(0xff2b2d27),
                    fontSize: 12,
                  ),
                ),
              ),
              options: SpiderChartOptions(
                maxValue: 5,
                gridColor: const Color(0xff2b2d27).withOpacity(.24),
                borderColor: const Color(0xff2b2d27).withOpacity(.24),
              ),
              data: [
                SpiderChartItem(
                  lineWidth: 1,
                  borderColor: const Color(0xFF3B7862),
                  fillColor: const Color(0xFF3B7862).withOpacity(.2),
                  points: [
                    const SpiderChartPoint(value: 1),
                    const SpiderChartPoint(value: 2),
                    const SpiderChartPoint(value: 3),
                    const SpiderChartPoint(value: 3),
                    const SpiderChartPoint(value: 3),
                  ],
                ),
                SpiderChartItem(
                  lineWidth: 1,
                  borderColor: const Color(0xFFC81F08),
                  fillColor: const Color(0xFFC81F08).withOpacity(.2),
                  points: [
                    const SpiderChartPoint(value: 2),
                    const SpiderChartPoint(value: 3),
                    const SpiderChartPoint(value: 4),
                    const SpiderChartPoint(value: 1),
                    const SpiderChartPoint(value: 1),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
