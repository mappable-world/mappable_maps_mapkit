import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:mappable_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:mappable_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:mappable_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'graphics_api_type.containers.dart';
part 'graphics_api_type.impl.dart';

/// @nodoc
/// Graphics API used by View
enum GraphicsAPIType {
  OpenGl,
  Vulkan,
  ;
}
