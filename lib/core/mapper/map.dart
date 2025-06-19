import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../features/auth/data/models/user_models.dart';
import '../../features/auth/domain/entities/user_entity.dart';

import 'map.auto_mappr.dart';

@AutoMappr([MapType<UserModels, UserEntity>()])
class Mappr extends $Mappr {}
