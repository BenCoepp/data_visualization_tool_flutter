// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:data_visualization_tool/Components/Developer_Series.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SimpleChart extends StatelessWidget {
  final List<SimpleSeries> data;

  SimpleChart({required this.data});
  @override
  Widget build(BuildContext context) {
    List<charts.Series<SimpleSeries, num>> series = [
      charts.Series(
          id: "developers",
          data: data,
          domainFn: (SimpleSeries series, _) => series.year,
          measureFn: (SimpleSeries series, _) => series.points,
          colorFn: (SimpleSeries series, _) => series.barColor)
    ];

    return Card(
      color: Colors.transparent,
      child: Column(
        children: [
          Expanded(
            child: charts.LineChart(series,
                domainAxis: const charts.NumericAxisSpec(
                  tickProviderSpec:
                      charts.BasicNumericTickProviderSpec(zeroBound: false),
                  viewport: charts.NumericExtents(0, 10),
                ),
                animate: true),
          )
        ],
      ),
    );
  }
}
