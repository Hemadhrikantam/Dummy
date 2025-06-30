import 'dart:async';
import 'dart:ui';

class DebouncerClass {
  DebouncerClass({this.milliseconds});
  final int? milliseconds;
  Timer? _timer;

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds ?? 350), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}
