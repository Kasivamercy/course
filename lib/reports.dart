import 'package:charts_flutter/flutter.dart' as charts;

class Reports {
  final int total;
  final String course;
  final int colorval;

  Reports(this.total, this.colorval, this.course);

  Reports.fromMap(Map<String, dynamic> map)
      : assert(map['total'] != null),
        assert(map['course'] != null),
        assert(map['color'] != null),
        total = map['total'],
        course = map['course'],
        colorval = map['color'];
  @override
  String toString() => "Records<$colorval: $total: $course>";
}
