import 'dart:math';
import 'package:flutter/material.dart';
import 'package:myapp/Widgets/chart_list.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:myapp/Widgets/model_charts.dart';

class BarGraphic extends StatefulWidget {
  const BarGraphic({Key? key}) : super(key: key);

  @override
  State<BarGraphic> createState() => _BarGraphicState();
}

class _BarGraphicState extends State<BarGraphic> {
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

  chartButtons(String buttonName, int numberSpots) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: OutlinedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 235, 231, 231)),
          ),
          onPressed: () {
            callDataCharts(numberSpots);
          },
          child: Text(buttonName)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final buttonChart = ChartButtonList().buttonChart;

    return Material(
      child: Column(children: [
        SfCartesianChart(
            primaryXAxis: CategoryAxis(isVisible: false),
            primaryYAxis: NumericAxis(isVisible: false),
            backgroundColor: const Color.fromARGB(255, 235, 231, 231),
            title: ChartTitle(
                text: ("R\$1000,00"),
                alignment: ChartAlignment.near,
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            series: <ChartSeries<CapitalDate, DateTime>>[
              BarSeries<CapitalDate, DateTime>(
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
              ...buttonChart.map((e) => Row(
                    children: [
                      chartButtons(
                          e.buttonName.toString() + "D", e.buttonName.toInt())
                    ],
                  )),
            ],
          ),
        )
      ]),
    );
  }
}
