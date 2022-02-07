import 'package:flutter_driver/flutter_driver.dart';

class HomeScreen {
  final txtCounter = find.byValueKey('counterText');
  final btnIncrement = find.byTooltip('Increment');
  final btnAdd = find.byValueKey("add");
  final btnSubtract = find.byValueKey("subtract");
  final txtAlert = find.byValueKey("alert_text");
  final btnClose = find.byValueKey("close_button");

  late FlutterDriver _driver;

  HomeScreen(FlutterDriver driver) {
    _driver = driver;
  }

  Future<String> getCounterValue() async {
    return await _driver.getText(txtCounter);
  }

  Future<void> clickBtnPlus() async {
    return await _driver.tap(btnIncrement);
  }

  Future<void> clickSubtractButton() async {
    return _driver.tap(btnSubtract);
  }
}
