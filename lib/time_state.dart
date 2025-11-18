import 'dart:async';

import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'time_state.g.dart';


@riverpod
TimeHolder timeRunner(Ref ref) {
  var datetime = DateTime.now();
  var hourFormater = DateFormat('HH');
  var minuteFormater = DateFormat('mm');
  var result = TimeHolder(hourFormater.format(datetime), minuteFormater.format(datetime));
  Timer(Duration(seconds: 1), () {
    ref.invalidateSelf();
  });
  return result;
}

class TimeHolder {
  const TimeHolder(this.hour, this.minute);

  final String hour;
  final String minute;
}
