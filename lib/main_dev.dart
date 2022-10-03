import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spending_mgmt/app/app.dart';
import 'package:spending_mgmt/app/app_bloc_observer.dart';

import 'package:spending_mgmt/flavors/build_config.dart';
import 'package:spending_mgmt/flavors/env_config.dart';

void main() {
  EnvConfig devConfig = EnvConfig(
      appName: "Quản lý thu chi",
      baseUrl: "https://dev.api.github.com",
      shouldCollectCrashLog: true);

  Bloc.observer = AppBlocObserver();

  BuildConfig.instantiate(
      envType: Environment.DEVELOPMENT, envConfig: devConfig);

  runApp(const MyApp());
}
