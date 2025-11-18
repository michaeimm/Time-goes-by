import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_goes_by/time_state.dart';

const timeTextStyle = TextStyle(
  fontSize: 42,
  height: 1.2,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontFamily: 'Saira'
);

const clockBorderColor = Color(0xFF6F2B0A);

class ClockWidget extends StatelessWidget {
  const ClockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF7E57C2), Color(0xFFAE45CB)],
            stops: [0.1, 0.6],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xCC000000),
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
        child: Container(
          padding: EdgeInsets.fromLTRB(32, 12, 24, 14),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            border: Border(
              bottom: BorderSide(color: clockBorderColor, width: 3),
              left: BorderSide(color: clockBorderColor, width: 3),
              top: BorderSide(color: clockBorderColor, width: 3),
            ),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 16,
            children: [
              TimeWidget(),
              Column(mainAxisSize: MainAxisSize.min, children: [LiveWidget()]),
            ],
          ),
        ),
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: [HourWidget(), SplitWidget(), MinuteWidget()],
    );
  }
}

class HourWidget extends ConsumerWidget {
  const HourWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var hour = ref.watch(timeRunnerProvider.select((value) => value.hour));
    return Text(hour, style: timeTextStyle);
  }
}

class MinuteWidget extends ConsumerWidget {
  const MinuteWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var minute = ref.watch(timeRunnerProvider.select((value) => value.minute));
    return Text(minute, style: timeTextStyle);
  }
}

class SplitWidget extends StatelessWidget {
  const SplitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(':', style: timeTextStyle);
  }
}

class LiveWidget extends StatelessWidget {
  const LiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Live',
      style: TextStyle(
        fontSize: 20,
        height: 1.6,
        fontWeight: FontWeight.bold,
        color: Color(0xFFFF1744),
        shadows: [
          Shadow(offset: Offset(0, 1), color: Colors.white),
          Shadow(offset: Offset(1, 0), color: Colors.white),
          Shadow(offset: Offset(-1, 0), color: Colors.white),
          Shadow(offset: Offset(0, -1), color: Colors.white),
        ],
      ),
    );
  }
}
