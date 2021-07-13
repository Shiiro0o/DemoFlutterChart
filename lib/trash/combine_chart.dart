import 'package:flutter/material.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;

class CombineChart extends StatefulWidget {
  CombineChart() : super();

  final String title = "Charts Demo";

  @override
  CombineChartState createState() => CombineChartState();
}

class CombineChartState extends State<CombineChart> {
  //
  List<charts.Series>? seriesList  ;

  static List<charts.Series<Sales, String>> _createRandomData() {
    final random = Random();
    final mobileSalesData = [
      Sales('2015', random.nextInt(100)),
      Sales('2016', random.nextInt(100)),
      Sales('2017', random.nextInt(100)),
      Sales('2018', random.nextInt(100)),
      Sales('2019', random.nextInt(100)),
    ];

    return [
      charts.Series<Sales, String>(
        id: 'Sales',
        domainFn: (Sales sales, _) => sales.year,
        measureFn: (Sales sales, _) => sales.sales,
        data: mobileSalesData,
        fillColorFn: (Sales sales, _) {
          return charts.MaterialPalette.teal.shadeDefault;
        },
      )
    ];
  }

  barChart() {
    return charts.OrdinalComboChart(
        seriesList,
        animate: true,
        // Configure the default renderer as a bar renderer.
        defaultRenderer: new charts.BarRendererConfig(
            groupingType: charts.BarGroupingType.grouped),

        // Custom renderer configuration for the line series. This will be used for
        // any series that does not define a rendererIdKey.
        customSeriesRenderers: [
          new charts.LineRendererConfig(
            // ID used to link series to this renderer.
              customRendererId: 'customLine')
        ]);

  }

  @override
  void initState() {
    super.initState();
    seriesList = _createRandomData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: (
         Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Container(
            padding: EdgeInsets.all(20.0),
            child: barChart(),
          ),
      )),
    );
  }
}

class Sales {
  final String year;
  final int sales;

  Sales(this.year, this.sales);
}