import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:mappable_maps_mapkit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:mappable_maps_mapkit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:mappable_maps_mapkit/src/bindings/common/vector.dart' as vector;

part 'event_tag.containers.dart';
part 'event_tag.impl.dart';

enum RoadEventsEventTag {
  Other,
  Feedback,
  Chat,

  /// Only use this tag in conjuction with RoadEventsLayer. Road events
  /// layer embedded into TrafficLayer can't display local chats.
  LocalChat,

  /// Temporary issues
  Drawbridge,
  Closed,
  Reconstruction,
  Accident,
  TrafficAlert,

  /// Potentially dangerous zones
  Danger,
  School,
  OvertakingDanger,
  PedestrianDanger,
  CrossRoadDanger,

  /// Traffic code control tags
  Police,
  LaneControl,
  RoadMarkingControl,
  CrossRoadControl,
  NoStoppingControl,
  MobileControl,
  SpeedControl,
  ;
}
