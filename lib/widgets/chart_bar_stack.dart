import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:testdemochart/models/pollution.dart';

class ChartBarStack extends StatelessWidget {
  final List<charts.Series<Pollution, String>>? seriesData;

  ChartBarStack(this.seriesData);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'SO₂ emissions, by world region (in million tonnes)',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: charts.BarChart(
                seriesData,
                animate: true,
                barGroupingType: charts.BarGroupingType.groupedStacked,
                //behaviors: [new charts.SeriesLegend()],
                animationDuration: Duration(seconds: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
