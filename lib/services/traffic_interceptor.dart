

import 'package:dio/dio.dart';



class TrafficInterceptor extends Interceptor{

  final accesToken = 'pk.eyJ1Ijoicnl1cnppbm4iLCJhIjoiY2xkcDk4eWlkMHF6ZTN3cHd3ZXZlaW84ZSJ9.-lQsr-rzfDeaE8p79NkJjg';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
   
    options.queryParameters.addAll({
        'alternatives' : true,
        'geometries'   : 'polyline6',
        'overview'     : 'simplified',
        'steps'        :  false,
        'access_token' :  accesToken,

    });


    super.onRequest(options, handler);
  }

}