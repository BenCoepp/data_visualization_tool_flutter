import 'package:charts_flutter/flutter.dart' as charts;

class SimpleSeries {
  final num year;
  final int points;
  final charts.Color barColor;

  SimpleSeries(
      {required this.year, required this.points, required this.barColor});
}
