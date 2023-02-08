part of 'map_bloc.dart';

 class MapState extends Equatable {

  final bool isMapIntialized;
  final bool isFollowingUser;
  final bool showMyRoute;

  // PolyLines

  final Map<String, Polyline> polylines;
  final Map<String, Marker> markers;
  /**
    mi_ruta: {
    id: polylineID google
    points: [[lat, lng], [123123123, 123131213], [1231323, 12312321]
    width: 3
    color: black87
   }
   */

  const MapState({
    this.isMapIntialized = false,
     this.isFollowingUser = true,
     this.showMyRoute = true,
     final Map<String, Polyline>? polylines,
     final Map<String, Marker>? markers
    }): polylines = polylines ?? const {},
        markers = markers ?? const {};



  MapState copyWith({
    bool? isMapIntialized,
    bool? isFollowingUser,
    bool? showMyRoute,
    final Map<String, Polyline>? polylines,
    final Map<String, Marker>? markers
  }) 
  => MapState(
   isFollowingUser: isFollowingUser ?? this.isFollowingUser,
   isMapIntialized: isMapIntialized ?? this.isMapIntialized,
   showMyRoute: showMyRoute ?? this.showMyRoute,
   polylines: polylines ?? this.polylines,
   markers: markers ?? this.markers,


  );
  
  @override
  List<Object> get props => [isMapIntialized, isFollowingUser, polylines, showMyRoute, markers];
}


