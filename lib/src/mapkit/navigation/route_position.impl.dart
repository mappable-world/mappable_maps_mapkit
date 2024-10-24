part of 'route_position.dart';

@bindings_annotations.ContainerData(
    toNative: 'RoutePositionImpl.getNativePtr',
    toPlatform:
        '(val) => RoutePositionImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'RoutePosition')
class RoutePositionImpl implements RoutePosition, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_RoutePosition_free.cast());

  /// @nodoc
  RoutePositionImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  RoutePositionImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(RoutePosition? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as RoutePositionImpl).ptr;
  }

  @internal

  /// @nodoc
  static RoutePosition? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return RoutePositionImpl.fromNativePtr(ptr);
  }

  @core.override
  mapkit_geometry_point.Point get point {
    final result = _RoutePosition_get_point(ptr);
    return mapkit_geometry_point.PointImpl.fromNative(result);
  }

  core.bool onRoute(core.String routeId) {
    final result =
        _RoutePosition_onRoute(ptr, to_native.toNativeString(routeId));
    return result;
  }

  mapkit_geometry_geometry.PolylinePosition? positionOnRoute(
      core.String routeId) {
    final result =
        _RoutePosition_positionOnRoute(ptr, to_native.toNativeString(routeId));
    return mapkit_geometry_geometry.PolylinePositionImpl.fromPointer(result);
  }

  RoutePosition advance(core.double distance) {
    final result = _RoutePosition_advance(ptr, distance);
    return RoutePositionImpl.fromNativePtr(result);
  }

  core.double? distanceTo(RoutePosition to) {
    final result =
        _RoutePosition_distanceTo(ptr, RoutePositionImpl.getNativePtr(to));
    return to_platform.toPlatformFromPointerDouble(result);
  }

  core.bool precedes(RoutePosition another) {
    final result =
        _RoutePosition_precedes(ptr, RoutePositionImpl.getNativePtr(another));
    return result;
  }

  core.bool precedesOrEquals(RoutePosition another) {
    final result = _RoutePosition_precedesOrEquals(
        ptr, RoutePositionImpl.getNativePtr(another));
    return result;
  }

  core.bool equals(RoutePosition another) {
    final result =
        _RoutePosition_equals(ptr, RoutePositionImpl.getNativePtr(another));
    return result;
  }

  core.double heading() {
    final result = _RoutePosition_heading(ptr);
    return result;
  }

  core.double distanceToFinish() {
    final result = _RoutePosition_distanceToFinish(ptr);
    return result;
  }

  core.double timeToFinish() {
    final result = _RoutePosition_timeToFinish(ptr);
    return result;
  }
}

final _RoutePosition_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'mappable_flutter_mapkit_navigation_RoutePosition_free');

final mapkit_geometry_point.PointNative Function(ffi.Pointer<ffi.Void>)
    _RoutePosition_get_point = lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_point.PointNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'mappable_flutter_mapkit_navigation_RoutePosition_get_point')
        .asFunction();

final core.bool Function(ffi.Pointer<ffi.Void>, native_types.NativeString)
    _RoutePosition_onRoute = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Bool Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeString)>>(
            'mappable_flutter_mapkit_navigation_RoutePosition_onRoute')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, native_types.NativeString)
    _RoutePosition_positionOnRoute = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeString)>>(
            'mappable_flutter_mapkit_navigation_RoutePosition_positionOnRoute')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>, core.double)
    _RoutePosition_advance = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Double)>>(
            'mappable_flutter_mapkit_navigation_RoutePosition_advance')
        .asFunction();
final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _RoutePosition_distanceTo = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'mappable_flutter_mapkit_navigation_RoutePosition_distanceTo')
        .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _RoutePosition_precedes = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Bool Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'mappable_flutter_mapkit_navigation_RoutePosition_precedes')
        .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _RoutePosition_precedesOrEquals = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Bool Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'mappable_flutter_mapkit_navigation_RoutePosition_precedesOrEquals')
        .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _RoutePosition_equals = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Bool Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'mappable_flutter_mapkit_navigation_RoutePosition_equals')
        .asFunction();
final core.double Function(ffi.Pointer<ffi.Void>) _RoutePosition_heading = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Double Function(ffi.Pointer<ffi.Void>)>>(
        'mappable_flutter_mapkit_navigation_RoutePosition_heading')
    .asFunction();
final core.double Function(ffi.Pointer<ffi.Void>)
    _RoutePosition_distanceToFinish = lib.library
        .lookup<ffi.NativeFunction<ffi.Double Function(ffi.Pointer<ffi.Void>)>>(
            'mappable_flutter_mapkit_navigation_RoutePosition_distanceToFinish')
        .asFunction();
final core.double Function(ffi.Pointer<ffi.Void>) _RoutePosition_timeToFinish =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Double Function(ffi.Pointer<ffi.Void>)>>(
            'mappable_flutter_mapkit_navigation_RoutePosition_timeToFinish')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _RoutePosition_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'mappable_flutter_mapkit_navigation_RoutePosition_set_')
    .asFunction(isLeaf: true);
