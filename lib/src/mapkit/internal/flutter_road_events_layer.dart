import 'dart:ffi' as ffi;
import 'package:mappable_maps_mapkit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:mappable_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:mappable_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:mappable_maps_mapkit/src/bindings/common/vector.dart' as vector;
import 'package:mappable_maps_mapkit/src/mapkit/road_events_layer/style_provider.dart'
    as mapkit_road_events_layer_style_provider;
import 'package:meta/meta.dart';

part 'flutter_road_events_layer.containers.dart';
part 'flutter_road_events_layer.impl.dart';

abstract class InternalDefaultStyleProvider implements ffi.Finalizable {
  core.bool provideStyle(
    mapkit_road_events_layer_style_provider
        .RoadEventsLayerRoadEventStylingProperties
        readEventStylingProperties,
    mapkit_road_events_layer_style_provider.RoadEventsLayerRoadEventStyle
        style, {
    required core.bool isNightMode,
    required core.double scaleFactor,
  });
}

class InternalDefaultStyleProviderFactory {
  InternalDefaultStyleProviderFactory._();

  static InternalDefaultStyleProvider createDefaultStyleProvider() {
    return _createDefaultStyleProvider();
  }
}
