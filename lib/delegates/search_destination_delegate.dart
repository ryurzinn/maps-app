

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_app/blocs/blocs.dart';
import 'package:maps_app/models/models.dart';

class SearchDestinationDelegate extends SearchDelegate<SearchResult>{

  SearchDestinationDelegate():super(searchFieldLabel: 'Buscar..');

  @override
  List<Widget>? buildActions(BuildContext context) {
   return [
     IconButton(onPressed: (){
      query = '';
     }, icon: const Icon(Icons.clear))
   ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
     icon: const Icon(Icons.arrow_back_ios),
     onPressed: (){
      final result = SearchResult(cancel: true);
      close(context, result);
     }

     );
  }

  @override
  Widget buildResults(BuildContext context) {

    final searchBloc = BlocProvider.of<SearchBloc>(context);
    final proximity = BlocProvider.of<LocationBloc>(context).state.lastKnowLocation!;
    searchBloc.getPlacesByQuery(proximity, query);

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return const Text('Aca iran los resultados');
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   return ListView(
    children: [
       ListTile(
          leading: const Icon( Icons.location_on_outlined, color: Colors.black ),
          title: const Text('Colocar la ubicación manualmente', style: TextStyle( color: Colors.black )),
          onTap: () {
            // TODO: regresar algo...


            final result = SearchResult( cancel: false, manual: true );
            close(context, result );
        },
        
       
      )
    ],
   );
  }



}