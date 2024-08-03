import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  String toBrazilianDateOnly() {
    return DateFormat('dd/MM/yyyy').format(this);
  }

  String toBrazilianTimeOnly() {
    return DateFormat('HH:mm:ss').format(this);
  }

  String toBrazilianDateAndTime({bool withSeconds = false}) {
    final secondsFormat = (withSeconds) ? ':ss' : '';

    return DateFormat('dd/MM/yyyy \'às\' HH:mm$secondsFormat').format(this);
  }
}
