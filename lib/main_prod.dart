import 'package:flutter/cupertino.dart';

import 'package:spending_mgmt/app/app.dart';

import 'package:spending_mgmt/flavors/build_config.dart';
import 'package:spending_mgmt/flavors/env_config.dart';

void main() {
  EnvConfig prodConfig = EnvConfig(
      appName: "Chat Agora PRODUCTION MODE",
      baseUrl: "https://api.github.com",
      shouldCollectCrashLog: true);

  BuildConfig.instantiate(
      envType: Environment.DEVELOPMENT, envConfig: prodConfig);

  runApp(const MyApp());
}
