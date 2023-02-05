import 'package:dio/dio.dart';



class PlacesInterceptor extends Interceptor {

  final accesToken = 'pk.eyJ1Ijoicnl1cnppbm4iLCJhIjoiY2xkcDk4eWlkMHF6ZTN3cHd3ZXZlaW84ZSJ9.-lQsr-rzfDeaE8p79NkJjg';

@override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {

    options.queryParameters.addAll({
      'limit' : 1,
      'language' : 'es',
      'acces_token' : accesToken,
      'country' : 'ar',

    });
    
    super.onRequest(options, handler);
  }

}