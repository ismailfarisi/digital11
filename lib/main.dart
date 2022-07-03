import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/app.dart';
import 'core/injector.dart';

void main() async {
  configureDependencies();
  await Hive.initFlutter();
  runApp(const MyApp());
}
