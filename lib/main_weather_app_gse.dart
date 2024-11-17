import 'config/flavor/flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.weather_app_gse;
  await runner.main();
}
