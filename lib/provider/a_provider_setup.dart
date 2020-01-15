import 'package:provider/provider.dart';

import 'radio_provider.dart';


class ProviderSetup {
  static List<ChangeNotifierProvider> kProviders = [
    ChangeNotifierProvider(create: (_) => RadioProvider()),
  ];


}
