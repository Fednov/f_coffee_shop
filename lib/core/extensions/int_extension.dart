import 'package:intl/intl.dart';

extension IntExtension on int {
  String toStringThousandSeparated() {
    var formatter = NumberFormat('#,###');

    return formatter.format(this);
  }
}
