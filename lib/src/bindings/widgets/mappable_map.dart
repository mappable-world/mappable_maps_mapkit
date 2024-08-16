import 'package:mappable_maps_mapkit/mapkit.dart';
import 'package:mappable_maps_mapkit/mapkit_factory.dart';
import 'package:mappable_maps_mapkit/src/bindings/widgets/platform_view_widget.dart';

class MappableMap extends PlatformViewWidget {
  MappableMap({
    super.key,
    super.platformViewType,
    super.textDirection,
    super.gestureRecognizers,
    super.hitTestBehavior,
    required this.onMapCreated,
    this.scale,
  }) : super(
          onViewCreated: (view) {
            final window = scale == null
                ? mapkit.createMapWindow(view)
                : mapkit.createMapWindowWithScale(view,
                    customScaleFactor: scale);
            onMapCreated(window);

            return true;
          },
        );

  final void Function(MapWindow) onMapCreated;
  final double? scale;
}
