

import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;

class SearchResult {

  final bool cancel;
  final bool manual;
  final LatLng? position;
  final String? name;
  final String? description;

  SearchResult({
   this.position,
   this.name,
   this.description,
   required this.cancel,  this.manual = false,
    });


  // Todo: 
  // name , description , latlong

  @override
  String toString(){
    return '{ cancel: $cancel, manual: $manual }';
  }

}