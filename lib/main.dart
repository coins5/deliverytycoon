import 'package:deliverytycoon/pages/home_page.dart';
import 'package:deliverytycoon/providers/app_startup_provider.dart';
import 'package:deliverytycoon/providers/navigator_key_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: AppRoot()));
}

class AppRoot extends ConsumerWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(appStartupProvider);
    return MaterialApp(
      title: 'Delivery Tycoon',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.green)),
      navigatorKey: ref.watch(navigatorKeyProvider),
      home: const HomePage(),
    );
  }
}
