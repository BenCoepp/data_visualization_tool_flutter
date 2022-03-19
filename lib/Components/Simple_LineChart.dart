/// Example of a simple line chart.
// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:data_visualization_tool/Components/Developer_Series.dart';
import 'package:data_visualization_tool/Components/Simple_Chart.dart';
import 'package:flutter/material.dart';

class SimpleLineChart extends StatelessWidget {
  final List<SimpleSeries> data;
  SimpleLineChart({required this.data});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SimpleChart(
        data: data,
      ),
    );
  }
}
