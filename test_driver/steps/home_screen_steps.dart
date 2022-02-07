import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../screens/home_screen.dart';

class InitialStateOfApp extends GivenWithWorld<FlutterWorld> {
  InitialStateOfApp()
      : super(StepDefinitionConfiguration()
          ..timeout = const Duration(seconds: 10));

  @override
  RegExp get pattern => RegExp(r"I test the initial state of the app");

  @override
  Future<void> executeStep() async {
    HomeScreen homeScreen = HomeScreen(world.driver);

    //expectMatch(await homePage.getCounterValue(), value);
  }
}

class ClickPlus extends AndWithWorld<FlutterWorld> {
  ClickPlus()
      : super(StepDefinitionConfiguration()
          ..timeout = const Duration(seconds: 10));

  @override
  RegExp get pattern => RegExp(r"I click the plus button");

  @override
  Future<void> executeStep() async {
    HomeScreen homeScreen = HomeScreen(world.driver);
    await homeScreen.clickAddButton();
  }
}

class ClickSubtract extends AndWithWorld<FlutterWorld> {
  ClickSubtract()
      : super(StepDefinitionConfiguration()
          ..timeout = const Duration(seconds: 10));

  @override
  RegExp get pattern => RegExp(r"I click subtract button");

  @override
  Future<void> executeStep() async {
    HomeScreen homeScreen = HomeScreen(world.driver);
    await homeScreen.clickSubtractButton();
  }
}

class ISeeValue extends Then1WithWorld<String, FlutterWorld> {
  ISeeValue()
      : super(StepDefinitionConfiguration()
          ..timeout = const Duration(seconds: 10));

  @override
  RegExp get pattern => RegExp(r"I see if the value is {string}");

  @override
  Future<void> executeStep(String value) async {
    HomeScreen homeScreen = HomeScreen(world.driver);
    expectMatch(await homeScreen.getCounterValue(), value);
  }
}
