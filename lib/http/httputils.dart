import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_sample/utils/logutil.dart';

class
HttpUtils{
  static const BASE_URL = "http://gank.io/api";
  static const CONNECT_TIMEOUT = 5000;
  static const RECEIVE_TIMEOUT = 3000;
  static Dio dio;

  static Dio _getInstance(){
    if(dio==null){
      var  options=BaseOptions(
        baseUrl: BASE_URL,
        connectTimeout: CONNECT_TIMEOUT,
        receiveTimeout: RECEIVE_TIMEOUT,
      );
      dio=Dio(options);
    }
    return dio;
  }
  static Future<Response> request(String url,Map map,String method) async{
    map.forEach((key,value){
      if(url.indexOf(key)!=-1){
        url=url.replaceAll(':$key', value.toString());

      }
    });
    var respons;
    var dio=_getInstance();
    if(method=="get"){
      respons= await dio.get(url);

    }

    return respons;
  }
}
