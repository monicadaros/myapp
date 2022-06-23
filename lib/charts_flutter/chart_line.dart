import 'dart:math';
import 'package:flutter/material.dart';
import 'package:myapp/Widgets/chart_buttons.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:myapp/Widgets/model_charts.dart';

class LineGraphic extends StatefulWidget {
  const LineGraphic({Key? key}) : super(key: key);

  @override
  State<LineGraphic> createState() => _LineGraphicState();
}

class _LineGraphicState extends State<LineGraphic> {
  bool chartBar = true;
  List<CapitalDate> data = <CapitalDate>[];
  @override
  initState() {
    super.initState();
    data = generateSpots(50);
  }

  List<CapitalDate> generateSpots(int count) {
    final DateTime todayTime = DateTime.now();
    List<CapitalDate> list = <CapitalDate>[];
    for (var i = 0; i < count; i++) {
      var randomChartCapital = Random();
      final chartDay = todayTime.subtract(Duration(days: i));
      final CapitalDate chartAxis =
          CapitalDate(chartDay, randomChartCapital.nextInt(1000));
      list.add(chartAxis);
    }
    return list;
  }

  callDataCharts(int numberSpots) {
    setState(() {
      data = generateSpots(numberSpots);
    });
  }

  @override
  Widget build(BuildContext context) {
    const valorCarteira = 1000;
    return Material(
      child: Column(children: [
        SfCartesianChart(
            primaryXAxis: CategoryAxis(isVisible: false),
            primaryYAxis: NumericAxis(isVisible: false),
            backgroundColor: const Color.fromARGB(255, 235, 231, 231),
            title: ChartTitle(
                text: ("R\$$valorCarteira,00"),
                alignment: ChartAlignment.near,
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            series: <ChartSeries<CapitalDate, DateTime>>[
              LineSeries<CapitalDate, DateTime>(
                animationDuration: 1000,
                dataSource: data,
                color: Colors.orange,
                xValueMapper: (CapitalDate data, _) => data.days,
                yValueMapper: (CapitalDate data, _) => data.marketCapital,
                dataLabelSettings: const DataLabelSettings(isVisible: false),
                markerSettings: const MarkerSettings(isVisible: false),
              ),
            ]),
        SizedBox(
          height: 30,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ChartButtons(
                  buttonName: "5D",
                  onPressed: () {
                    callDataCharts(5);
                  }),
              ChartButtons(
                  buttonName: "10D",
                  onPressed: () {
                    callDataCharts(10);
                  }),
              ChartButtons(
                  buttonName: "15D",
                  onPressed: () {
                    callDataCharts(15);
                  }),
              ChartButtons(
                  buttonName: "30D",
                  onPressed: () {
                    callDataCharts(30);
                  }),
              ChartButtons(
                  buttonName: "50D",
                  onPressed: () {
                    callDataCharts(50);
                  }),
            ],
          ),
        )
      ]),
    );
  }
}
