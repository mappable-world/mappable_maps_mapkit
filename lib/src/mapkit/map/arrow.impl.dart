part of 'arrow.dart';

@bindings_annotations.WeakInterface('mapkit.map.Arrow')
@bindings_annotations.ContainerData(
    toNative: 'ArrowImpl.getNativePtr',
    toPlatform:
        '(val) => ArrowImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'Arrow')
class ArrowImpl implements Arrow, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Arrow_free.cast());

  /// @nodoc
  ArrowImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  ArrowImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory ArrowImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Arrow? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as ArrowImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _Arrow_check(ptr);
  }

  @internal

  /// @nodoc
  static Arrow? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return ArrowImpl.fromNativePtr(ptr);
  }

  @core.override
  mapkit_geometry_geometry.PolylinePosition get position {
    final result = _Arrow_get_position(ptr);
    exception.checkCallResult();
    return mapkit_geometry_geometry.PolylinePositionImpl.fromNative(result);
  }

  @core.override
  ui.Color get fillColor {
    final result = _Arrow_get_fillColor(ptr);
    exception.checkCallResult();
    return to_platform.toPlatformColor(result);
  }

  @core.override
  set fillColor(ui.Color val) {
    _Arrow_set_fillColor(ptr, to_native.toNativeColor(val));
    exception.checkCallResult();
  }

  @core.override
  ui.Color get outlineColor {
    final result = _Arrow_get_outlineColor(ptr);
    exception.checkCallResult();
    return to_platform.toPlatformColor(result);
  }

  @core.override
  set outlineColor(ui.Color val) {
    _Arrow_set_outlineColor(ptr, to_native.toNativeColor(val));
    exception.checkCallResult();
  }

  @core.override
  core.double get outlineWidth {
    final result = _Arrow_get_outlineWidth(ptr);
    exception.checkCallResult();
    return result;
  }

  @core.override
  set outlineWidth(core.double val) {
    _Arrow_set_outlineWidth(ptr, val);
    exception.checkCallResult();
  }

  @core.override
  core.double get length {
    final result = _Arrow_get_length(ptr);
    exception.checkCallResult();
    return result;
  }

  @core.override
  set length(core.double val) {
    _Arrow_set_length(ptr, val);
    exception.checkCallResult();
  }

  @core.override
  core.bool get visible {
    final result = _Arrow_get_visible(ptr);
    exception.checkCallResult();
    return result;
  }

  @core.override
  set visible(core.bool val) {
    _Arrow_set_visible(ptr, val);
    exception.checkCallResult();
  }

  @core.override
  core.double get triangleHeight {
    final result = _Arrow_get_triangleHeight(ptr);
    exception.checkCallResult();
    return result;
  }

  @core.override
  set triangleHeight(core.double val) {
    _Arrow_set_triangleHeight(ptr, val);
    exception.checkCallResult();
  }
}

final _Arrow_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'mappable_flutter_mapkit_map_Arrow_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _Arrow_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'mappable_flutter_mapkit_map_Arrow_check')
    .asFunction(isLeaf: true);

final mapkit_geometry_geometry.PolylinePositionNative Function(
        ffi.Pointer<ffi.Void>) _Arrow_get_position =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    mapkit_geometry_geometry.PolylinePositionNative Function(
                        ffi.Pointer<ffi.Void>)>>(
            'mappable_flutter_mapkit_map_Arrow_get_position')
        .asFunction();

final native_types.NativeColor Function(ffi.Pointer<ffi.Void>)
    _Arrow_get_fillColor = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeColor Function(ffi.Pointer<ffi.Void>)>>(
            'mappable_flutter_mapkit_map_Arrow_get_fillColor')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeColor)
    _Arrow_set_fillColor = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeColor)>>(
            'mappable_flutter_mapkit_map_Arrow_set_fillColor')
        .asFunction();

final native_types.NativeColor Function(ffi.Pointer<ffi.Void>)
    _Arrow_get_outlineColor = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeColor Function(ffi.Pointer<ffi.Void>)>>(
            'mappable_flutter_mapkit_map_Arrow_get_outlineColor')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeColor)
    _Arrow_set_outlineColor = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeColor)>>(
            'mappable_flutter_mapkit_map_Arrow_set_outlineColor')
        .asFunction();

final core.double Function(ffi.Pointer<ffi.Void>) _Arrow_get_outlineWidth = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Float Function(ffi.Pointer<ffi.Void>)>>(
        'mappable_flutter_mapkit_map_Arrow_get_outlineWidth')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double)
    _Arrow_set_outlineWidth = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
            'mappable_flutter_mapkit_map_Arrow_set_outlineWidth')
        .asFunction();

final core.double Function(ffi.Pointer<ffi.Void>) _Arrow_get_length = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Float Function(ffi.Pointer<ffi.Void>)>>(
        'mappable_flutter_mapkit_map_Arrow_get_length')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double) _Arrow_set_length = lib
    .library
    .lookup<
        ffi.NativeFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Float)>>('mappable_flutter_mapkit_map_Arrow_set_length')
    .asFunction();

final core.bool Function(ffi.Pointer<ffi.Void>) _Arrow_get_visible = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'mappable_flutter_mapkit_map_Arrow_get_visible')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.bool) _Arrow_set_visible = lib
    .library
    .lookup<
        ffi.NativeFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Bool)>>('mappable_flutter_mapkit_map_Arrow_set_visible')
    .asFunction();

final core.double Function(ffi.Pointer<ffi.Void>) _Arrow_get_triangleHeight =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Float Function(ffi.Pointer<ffi.Void>)>>(
            'mappable_flutter_mapkit_map_Arrow_get_triangleHeight')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double)
    _Arrow_set_triangleHeight = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
            'mappable_flutter_mapkit_map_Arrow_set_triangleHeight')
        .asFunction();

final void Function(ffi.Pointer<ffi.Void>, core.int) _Arrow_set = lib.library
    .lookup<
        ffi.NativeFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Int64)>>('mappable_flutter_mapkit_map_Arrow_set_')
    .asFunction(isLeaf: true);
