part of 'subpolyline_helper.dart';

mapkit_geometry_geometry.Polyline _subpolyline(
    mapkit_geometry_geometry.Polyline polyline,
    mapkit_geometry_geometry.Subpolyline subpolyline) {
  return mapkit_geometry_geometry.PolylineImpl.fromNativePtr(
      _SubpolylineHelper_subpolyline(
          mapkit_geometry_geometry.PolylineImpl.getNativePtr(polyline),
          mapkit_geometry_geometry.SubpolylineImpl.toNative(subpolyline)));
}

core.double _subpolylineLength(mapkit_geometry_geometry.Polyline polyline,
    mapkit_geometry_geometry.Subpolyline subpolyline) {
  return _SubpolylineHelper_subpolylineLength(
      mapkit_geometry_geometry.PolylineImpl.getNativePtr(polyline),
      mapkit_geometry_geometry.SubpolylineImpl.toNative(subpolyline));
}

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.Void>, mapkit_geometry_geometry.SubpolylineNative)
    _SubpolylineHelper_subpolyline = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>,
                        mapkit_geometry_geometry.SubpolylineNative)>>(
            'mappable_flutter_mapkit_geometry_SubpolylineHelper_subpolyline')
        .asFunction();
final core.double Function(
    ffi.Pointer<ffi.Void>,
    mapkit_geometry_geometry
        .SubpolylineNative) _SubpolylineHelper_subpolylineLength = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Double Function(ffi.Pointer<ffi.Void>,
                    mapkit_geometry_geometry.SubpolylineNative)>>(
        'mappable_flutter_mapkit_geometry_SubpolylineHelper_subpolylineLength')
    .asFunction();
