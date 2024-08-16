import 'dart:ffi' as ffi;
import 'package:mappable_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:mappable_maps_mapkit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:mappable_maps_mapkit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:mappable_maps_mapkit/src/bindings/common/to_platform.dart'
    as to_platform;

part 'search_utils.impl.dart';

class SearchUtils {
  SearchUtils._();

  static core.String makeBusinessUri(core.String oid) {
    return _makeBusinessUri(
      oid,
    );
  }
}
