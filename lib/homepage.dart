import 'dart:math';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testdemochart/widgets/alarm_chart.dart';
import 'package:testdemochart/widgets/chart_bar.dart';
import 'package:testdemochart/widgets/chart_bar_stack.dart';
import 'package:testdemochart/widgets/chart_pie.dart';
import 'package:testdemochart/widgets/combo_chart.dart';
import 'package:testdemochart/widgets/linechart.dart';

import 'models/pollution.dart';
import 'models/sales.dart';
import 'models/task.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<charts.Series<Pollution, String>>? seriesData;
  List<charts.Series<Task, String>>? seriesPieData;
  List<charts.Series<Sales, int>>? seriesLineData;
  final random = Random();

  _generateData() {
    var data1 = [
       Pollution(1980, 'USA', 30),
       Pollution(1980, 'USA1' , random.nextInt(200)),
       Pollution(1980,'USA2' , random.nextInt(200)),
       Pollution(1980, 'USA3', random.nextInt(200)),
       Pollution(1980, 'USA4', random.nextInt(200)),
    ];
    var data2 = [
       Pollution(1985, 'USA', random.nextInt(200)),
       Pollution(1985, 'USA1', random.nextInt(200)),
       Pollution(1985, 'USA2', random.nextInt(200)),
       Pollution(1985, 'USA3', random.nextInt(200)),
       Pollution(1985, 'USA4', random.nextInt(200)),
    ];
    var data3 = [
       Pollution(1986, 'USA', random.nextInt(200)),
      Pollution(1986, 'USA1', random.nextInt(200)),
      Pollution(1986, 'USA2', random.nextInt(200)),
      Pollution(1986, 'USA3', random.nextInt(200)),
      Pollution(1986, 'USA4', random.nextInt(200)),

    ];
    var data4 = [
      new Pollution(1987, 'USA', random.nextInt(200)),
      new Pollution(1987, 'USA1', random.nextInt(200)),
      new Pollution(1987, 'USA2', random.nextInt(200)),
      new Pollution(1987, 'USA3', random.nextInt(200)),
      new Pollution(1987, 'USA4', random.nextInt(200)),
    ];
    var data5 = [
      new Pollution(1988, 'USA', random.nextInt(200)),
      new Pollution(1988, 'USA1', random.nextInt(200)),
      new Pollution(1988, 'USA2', random.nextInt(200)),
      new Pollution(1988, 'USA3', random.nextInt(200)),
      new Pollution(1988, 'USA4', random.nextInt(200)),

    ];
    var data6 = [
      new Pollution(1989, 'USA', random.nextInt(200)),
      new Pollution(1989, 'USA1', random.nextInt(200)),
      new Pollution(1989, 'USA2', random.nextInt(200)),
      new Pollution(1989, 'USA3', random.nextInt(200)),
      new Pollution(1989, 'USA4', random.nextInt(200)),
    ];

    var piedata = [
      new Task('Work', 35.8, Color(0xff3366cc)),
      new Task('Eat', 8.3, Color(0xff990099)),
      new Task('Commute', 10.8, Color(0xff109618)),
      new Task('TV', 15.6, Color(0xfffdbe19)),
      new Task('Sleep', 19.2, Color(0xffff9900)),
      new Task('Other', 10.3, Color(0xffdc3912)),
    ];

    var linesalesdata = [
      new Sales(0, 45),
      new Sales(1, 56),
      new Sales(2, 55),
      new Sales(3, 60),
      new Sales(4, 61),
      new Sales(5, 70),
    ];
    var linesalesdata1 = [
      new Sales(0, 35),
      new Sales(1, 46),
      new Sales(2, 45),
      new Sales(3, 50),
      new Sales(4, 51),
      new Sales(5, 60),
    ];

    var linesalesdata2 = [
      new Sales(0, 20),
      new Sales(1, 24),
      new Sales(2, 25),
      new Sales(3, 40),
      new Sales(4, 45),
      new Sales(5, 60),
    ];

    seriesData!.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff990099)),
      ),
    );

    seriesData!.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2018',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ),
    );

    seriesData!.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2019',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      ),
    );

    seriesData!.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2020',
        data: data4,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      ),
    );

    seriesData!.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2021',
        data: data5,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      ),
    );
    seriesData!.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2021',
        data: data6,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      ),
    );

    seriesPieData!.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Pollution',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );

    seriesLineData!.add(
      charts.Series(

        colorFn: (_, __) =>
            charts.ColorUtil.fromDartColor(Color(0xff04f110)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    seriesLineData!.add(
      charts.Series(
        id: 'Air Pollution',
        data: linesalesdata1,
        dashPatternFn: (_, __) => [2, 2],
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );

    seriesLineData!.add(
      charts.Series(
        id: 'Air Pollution',
        dashPatternFn: (_, __) => [8, 3, 2, 3],
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    seriesData = <charts.Series<Pollution, String>>[];
    seriesPieData = <charts.Series<Task, String>>[];
    seriesLineData = <charts.Series<Sales, int>>[];
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1976d2),
            //backgroundColor: Color(0xff308e1c),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(
                  icon: Icon(FontAwesomeIcons.solidChartBar),
                ),
                Tab(
                  icon: Icon(FontAwesomeIcons.chartBar),
                ),
                Tab(icon: Icon(FontAwesomeIcons.chartPie)),
                Tab(icon: Icon(FontAwesomeIcons.chartLine)),
                Tab(icon: Icon(FontAwesomeIcons.uncharted)),
                Tab(icon: Icon(FontAwesomeIcons.chartArea))
              ],
            ),
            title: Text('Flutter Charts'),
          ),
          body: TabBarView(
            children: [
              Padding(
                  padding: EdgeInsets.all(8.0), child: ChartBar(seriesData)),
              Padding(
                  padding: EdgeInsets.all(8.0), child: ChartBarStack(seriesData)),
              Padding(
                  padding: EdgeInsets.all(8.0), child: ChartPie(seriesPieData)),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: LineChart(seriesLineData)),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GaugeChart()),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: NumericComboLineBarChart()),

            ],
          ),
        ),
      ),
    );
  }
}
