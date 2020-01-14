import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';

import 'package:yedenradio/provider/a_provider_setup.dart';
import 'package:yedenradio/ui/dashboard_screen.dart';

Future main() {
  runApp(MultiProvider(
      providers: ProviderSetup.kProviders,
      child: MaterialApp(
        initialRoute: DashboardScreen.id,
        routes: {
          DashboardScreen.id: (context) => DashboardScreen(),
        },
      )));
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
