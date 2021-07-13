import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:testdemochart/models/sales.dart';

class LineChart extends StatelessWidget {
  List<charts.Series<Sales, int>>? seriesLineData;

  LineChart(this.seriesLineData);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Sales for the first 5 years',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: charts.LineChart(seriesLineData,
                  defaultRenderer: new charts.LineRendererConfig(
                      includeArea: false, stacked: true,includePoints: true),
                  animate: true,
                  animationDuration: Duration(seconds: 1),
                  behaviors: [
                    new charts.ChartTitle('Years',
                        behaviorPosition: charts.BehaviorPosition.bottom),
                    new charts.ChartTitle('Sales',
                        behaviorPosition: charts.BehaviorPosition.start),
                    new charts.ChartTitle(
                      'Departments',
                      behaviorPosition: charts.BehaviorPosition.end )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
