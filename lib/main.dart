import 'package:flutter/material.dart';
import 'package:fish_feeds_app/utils/constants/colors.dart';
import 'package:fish_feeds_app/my_app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

export 'my_app.dart';

void main() {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
