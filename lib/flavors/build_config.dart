// ignore_for_file: constant_identifier_names

import 'package:spending_mgmt/flavors/env_config.dart';

enum Environment { DEVELOPMENT, PRODUCTION }

class BuildConfig {
  late Environment environment;
  late EnvConfig config;
  bool _lock = false;

  static final BuildConfig instance = BuildConfig._internal();

  BuildConfig._internal();

  factory BuildConfig.instantiate({
    required Environment envType,
    required EnvConfig envConfig,
  }) {
    if (instance._lock) return instance;

    instance.environment = envType;
    instance.config = envConfig;
    instance._lock = true;

    return instance;
  }
}
