// Packages

export 'package:flutter/material.dart';
export 'package:package_info_plus/package_info_plus.dart';
export 'package:flutter_riverpod/flutter_riverpod.dart';
export 'package:dio/dio.dart';
export 'dart:convert';

// core
export '../config/config.flavor.dart';
export '../config/url.dart';
export '../config/flavors/config.simpson.dart';
export '../config/flavors/config.wire.dart';
export '../config/flavors/flavor_provider.dart';

export '../core/failures.dart';
export '../core/api_call.dart';

//

export '../src/domain/model/character.dart';

export '../core/api_call.dart';
export '../src/insfrastructure/api_repo.dart';
export '../src/domain/repo/character_repo.dart';
export '../src/domain/model/character.dart';
export '../src/insfrastructure/api_client.dart';
export '../src/application/character_view_model.dart';
export '../src/character_providers.dart';

//widgets
export '../src/presentation/widgets/common/widget_error.dart';
export '../src/presentation/widgets/common/custom_circular_indicator.dart';
export '../src/presentation/widgets/character/character_widget.dart';

export '../src/presentation/widgets/common/custom_image.dart';
export '../src/presentation/widgets/common/custom_text.dart';

// pages
export '../src/presentation/pages/home_page.dart';
