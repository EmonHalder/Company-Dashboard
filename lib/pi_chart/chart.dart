import 'package:flutter/material.dart';
// import 'package:pie_chart/pie_chart.dart';
// Make sure this is added in pubspec.yaml

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Used": 70,
      "Remaining": 30,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pie Chart"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: PieChart(
          dataMap: dataMap,
          chartRadius: MediaQuery.of(context).size.width / 2.2,
          chartType: ChartType.ring,
          ringStrokeWidth: 32,
          colorList: [Colors.blue, Colors.white],
          chartValuesOptions: const ChartValuesOptions(
            showChartValues: true,
            showChartValuesInPercentage: true,
            showChartValueBackground: false,
            decimalPlaces: 0,
          ),
          legendOptions: const LegendOptions(
            showLegends: false,
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  PieChart(
      {required Map<String, double> dataMap,
      required double chartRadius,
      required chartType,
      required int ringStrokeWidth,
      required List<Color> colorList,
      required ChartValuesOptions chartValuesOptions,
      required LegendOptions legendOptions}) {}
}

class LegendOptions {
  const LegendOptions({required bool showLegends});
}

class ChartValuesOptions {
  const ChartValuesOptions(
      {required bool showChartValues,
      required bool showChartValuesInPercentage,
      required bool showChartValueBackground,
      required int decimalPlaces});
}

class ChartType {
  // ignore: prefer_typing_uninitialized_variables
  static var ring;
}
