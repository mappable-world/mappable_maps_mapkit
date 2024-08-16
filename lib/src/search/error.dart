import 'dart:ffi' as ffi;
import 'package:mappable_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:mappable_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:mappable_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:mappable_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:mappable_maps_mapkit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:mappable_maps_mapkit/src/runtime/error.dart' as runtime_error;
import 'package:meta/meta.dart';

part 'error.containers.dart';
part 'error.impl.dart';

/// No cache available for offline search for the given request.
abstract class SearchCacheUnavailableError
    implements runtime_error.Error, ffi.Finalizable {
  core.bool isValid();
}