import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:mappable_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:mappable_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:mappable_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'tile_format.containers.dart';
part 'tile_format.impl.dart';

enum TileFormat {
  Png,
  Jpg,
  Vector2,
  Vector3,
  GeoJson,
  ;
}
