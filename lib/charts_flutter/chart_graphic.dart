import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphicBtc extends StatefulWidget {
  const GraphicBtc({Key? key}) : super(key: key);

  @override
  State<GraphicBtc> createState() => _GraphicBtcState();
}

class _GraphicBtcState extends State<GraphicBtc> {
  final List<CapitalDate> data = [
    CapitalDate('10', 4),
    CapitalDate('15', 7),
    CapitalDate('20', 6),
    CapitalDate('25', 8),
    CapitalDate('30', 6),
    CapitalDate('35', 7),
    CapitalDate('40', 9),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        SfCartesianChart(
            primaryXAxis: CategoryAxis(isVisible: false),
            primaryYAxis: NumericAxis(isVisible: false),
            backgroundColor: Color.fromARGB(255, 235, 231, 231),
            title: ChartTitle(
                text: 'R\$1000,00',
                alignment: ChartAlignment.near,
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            series: <ChartSeries<CapitalDate, String>>[
              LineSeries<CapitalDate, String>(
                animationDuration: 1000,
                dataSource: data,
                color: Colors.orange,
                xValueMapper: (CapitalDate data, _) => data.days,
                yValueMapper: (CapitalDate data, _) => data.marketCapital,
                dataLabelSettings: const DataLabelSettings(isVisible: false),
                markerSettings: const MarkerSettings(isVisible: false),
              ),
            ]),
      ]),
    );
  }
}

class CapitalDate {
  CapitalDate(this.days, this.marketCapital);

  final String days;
  final int marketCapital;
}
