import 'dart:ffi' as ffi;
import 'package:mappable_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:mappable_maps_mapkit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:mappable_maps_mapkit/src/bindings/common/exception.dart'
    as exception;
import 'package:mappable_maps_mapkit/src/bindings/weak_map/weak_map.dart'
    as weak_map;

part 'region_listener.impl.dart';

/// Listener to handle region information.
/// @attention This feature is not available in the free MapKit version.
abstract class OfflineCacheRegionListener {
  /// Region state was changed.
  void onRegionStateChanged(core.int regionId);

  /// Progress of specific region download was updated.
  void onRegionProgress(core.int regionId);
}
