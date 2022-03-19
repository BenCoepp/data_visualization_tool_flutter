// ignore_for_file: override_on_non_overriding_member, empty_statements, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, file_names, camel_case_types, prefer_const_literals_to_create_immutables, annotate_overrides

import 'package:data_visualization_tool/Components/Developer_Series.dart';
import 'package:data_visualization_tool/Components/Simple_LineChart.dart';
import 'package:flutter/material.dart';
import '../data.dart' as data;
import 'package:charts_flutter/flutter.dart' as charts;

class Overview_Page extends StatefulWidget {
  OverviewPage_Widget createState() => OverviewPage_Widget();
  static const routeName = '/overview';
}

class OverviewPage_Widget extends State<Overview_Page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: data.projectList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data.projectList[index].name),
                  );
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width -
                  MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.height,
              child: SimpleLineChart(
                data: [
                  SimpleSeries(
                    year: 0,
                    points: 0,
                    barColor: charts.ColorUtil.fromDartColor(
                        Color.fromARGB(255, 62, 213, 152)),
                  ),
                  SimpleSeries(
                    year: 1,
                    points: 4,
                    barColor: charts.ColorUtil.fromDartColor(
                        Color.fromARGB(255, 62, 213, 152)),
                  ),
                  SimpleSeries(
                    year: 2,
                    points: 3,
                    barColor: charts.ColorUtil.fromDartColor(
                        Color.fromARGB(255, 62, 213, 152)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
