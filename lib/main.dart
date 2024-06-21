import 'package:flutter/material.dart';
import 'package:spider_chart/spider_chart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: SpiderChart(
              labels: const [
                'Label 1',
                'Label 2',
                'Label 3',
                'Label 4',
                'Label 5',
              ],
              options: SpiderChartOptions(
                maxValue: 5,
                labelStyle: const TextStyle(color: Colors.black),
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
                    const SpiderChartPoint(value: 4),
                    const SpiderChartPoint(value: 5),
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
                    const SpiderChartPoint(value: 2),
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
