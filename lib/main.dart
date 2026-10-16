import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'app.dart';

Future<void> main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(
    DevicePreview(
      enabled: kIsWeb || defaultTargetPlatform == TargetPlatform.linux,
      builder: (context) => const App(),
    ),
  );

  // Tempo mínimo da splash. Depois troque por carregamento real, se houver.
  await Future.delayed(const Duration(seconds: 5));
  FlutterNativeSplash.remove();
}