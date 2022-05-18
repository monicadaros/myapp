import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphicBtc extends StatefulWidget {
  const GraphicBtc({Key? key}) : super(key: key);

  @override
  State<GraphicBtc> createState() => _GraphicBtcState();
}

class _GraphicBtcState extends State<GraphicBtc> {
  final List<CapitalDate> data = [
    CapitalDate('1', 0),
    CapitalDate('2', 3),
    CapitalDate('3', 5),
    CapitalDate('4', 4),
    CapitalDate('5', 7),
    CapitalDate('6', 6),
    CapitalDate('7', 8),
    CapitalDate('8', 9),
    CapitalDate('9', 0),
    CapitalDate('10', 3),
    CapitalDate('11', 5),
    CapitalDate('12', 4),
    CapitalDate('13', 7),
    CapitalDate('14', 6),
    CapitalDate('15', 8),
  ];

  late SelectionBehavior _selectionBehavior;

  @override
  void initState() {
    _selectionBehavior =
        SelectionBehavior(enable: true, toggleSelection: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        SfCartesianChart(
            primaryXAxis: CategoryAxis(isVisible: false),
            primaryYAxis: NumericAxis(isVisible: false),
            backgroundColor: const Color.fromARGB(255, 235, 231, 231),
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
                selectionBehavior: _selectionBehavior,
              ),
            ]),
        OutlinedButton(onPressed: onPressed, child: const Text("5D"))
      ]),
    );
  }
}

class CapitalDate {
  CapitalDate(this.days, this.marketCapital);

  final String days;
  final int marketCapital;
}
