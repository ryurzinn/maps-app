

class SearchResult {

  final bool cancel;
  final bool manual;

  SearchResult({required this.cancel,  this.manual = false});


  // Todo: 
  // name , description , latlong

  @override
  String toString(){
    return '{ cancel: $cancel, manual: $manual }';
  }

}