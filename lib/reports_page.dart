import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course/reports.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ReportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Reports'),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          child: FutureBuilder(
              future: getData(),
              builder: ((context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Error"),
                  );
                }
                if (snapshot.hasData) {
                  var data = snapshot.data as List<Reports>;
                  return DeveloperChart(data: data);
                } else {
                  return Center(
                    child: Text("No Data Found"),
                  );
                }
              })),
        ),
      ),
    );
  }
}

Future<List<Reports>> getData() async {
  List<Reports> reports = [];
  var data =
      await FirebaseFirestore.instance.collection("AppliedCourses").get();
  var result = data.docs.toList();
  result.forEach((element) {
    reports.add(Reports.fromMap(element.data()));
  });
  return reports;
}

class DeveloperChart extends StatelessWidget {
  final List<Reports> data;

  DeveloperChart({required this.data});
  @override
  Widget build(BuildContext context) {
    List<charts.Series<Reports, String>> series = [
      charts.Series(
        id: "developers",
        data: data,
        domainFn: (Reports series, _) => series.course,
        measureFn: (Reports series, _) => series.total,
        colorFn: (Reports series, _) =>
            charts.ColorUtil.fromDartColor(Color(series.colorval)),
      )
    ];

    return charts.BarChart(
      series,
      animate: true,
      domainAxis: charts.OrdinalAxisSpec(
        renderSpec: charts.SmallTickRendererSpec(
          // Rotation Here,
          labelRotation: -90,
          labelOffsetFromTickPx: -5,
          labelAnchor: charts.TickLabelAnchor.before,
        ),
      ),
    );
  }
}
