import 'package:flutter/material.dart';
import 'package:th_app/MyHomePage/widgets/AppPageView/pages/PlusCounter/widgets/CounterContainer.dart';
import 'package:th_app/MyHomePage/widgets/AppPageView/pages/PlusCounter/widgets/CounterRow.dart';

class PlusCounter extends StatefulWidget {
  const PlusCounter({
    super.key,
    required this.vh,
    required this.vw,
  });

  final double vh;
  final double vw;

  @override
  State<PlusCounter> createState() => _PlusCounterState();
}

class _PlusCounterState extends State<PlusCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    void resetCount() => setState(() {
          count = 0;
        });

    void incrementCount() => setState(() {
          count++;
        });

    void decrementCount() => setState(() {
          count--;
        });

    return Container(
      color: const Color.fromRGBO(246, 229, 141, 0.4),
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CounterContainer(count: count, vh: widget.vh),
            CounterRow(
                resetCount: resetCount,
                incrementCount: incrementCount,
                decrementCount: decrementCount)
          ],
        ),
      ),
    );
  }
}
