import 'dart:ffi' as ffi;
import 'package:mappable_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:mappable_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:mappable_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:mappable_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:mappable_maps_mapkit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;

part 'restricted_entry.containers.dart';
part 'restricted_entry.impl.dart';

/// Special point on the route (like gates).
abstract final class BicycleRestrictedEntry implements ffi.Finalizable {
  factory BicycleRestrictedEntry(
          mapkit_geometry_geometry.PolylinePosition position) =>
      BicycleRestrictedEntryImpl(position);

  BicycleRestrictedEntry._();

  /// Entry position on the route polyline.
  mapkit_geometry_geometry.PolylinePosition get position;

  @core.override
  core.int get hashCode => core.Object.hashAll([position]);

  @core.override
  core.bool operator ==(covariant BicycleRestrictedEntry other) {
    if (core.identical(this, other)) {
      return true;
    }
    return position == other.position;
  }

  @core.override
  core.String toString() {
    return "BicycleRestrictedEntry(position: $position)";
  }
}
