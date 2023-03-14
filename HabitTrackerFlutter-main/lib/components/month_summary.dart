import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:mhapp/datetime/date_time.dart';

class MonthlySummary extends StatelessWidget {
  final Map<DateTime, int>? datasets;
  final String startDate;

  const MonthlySummary({
    super.key,
    required this.datasets,
    required this.startDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, bottom: 25),
      child: HeatMap(
        startDate: createDateTimeObject(startDate),
        endDate: DateTime.now().add(Duration(days: 31)),
        datasets: datasets,
        colorMode: ColorMode.color,
        defaultColor: Color.fromARGB(255, 182, 179, 182),
        borderRadius: 20,
        textColor: Color.fromARGB(255, 7, 7, 7),
        showColorTip: true,
        showText: true,
        scrollable: true,
        colorTipCount: 5,
        size: 30,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        colorsets: const {
          1: Color.fromARGB(103, 28, 2, 34),
          2: Color.fromARGB(40, 147, 2, 179),
          3: Color.fromARGB(59, 138, 2, 179),
          4: Color.fromARGB(80, 132, 2, 179),
          5: Color.fromARGB(99, 158, 2, 179),
          6: Color.fromARGB(120, 150, 2, 179),
          7: Color.fromARGB(149, 123, 2, 179),
          8: Color.fromARGB(180, 138, 2, 179),
          9: Color.fromARGB(220, 158, 2, 179),
          10: Color.fromARGB(255, 155, 2, 179),
        },
        onClick: (value) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(value.toString())));
        },
      ),
    );
  }
}
