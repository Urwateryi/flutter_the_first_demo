import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:the_first_one/model/Api.dart';

//要查网络请求的日志可以使用过滤<net>
class NetUtil4 {
  static const String GET = "get";
  static const String POST = "post";

  //get请求
  static void get(String url, Function callBack,
      {Map<String, String> params, Function errorCallBack}) async {
    if (!url.startsWith("http")) {
      url = Api.BaseUrl + url;
    }

    _request(url, callBack,
        method: GET, params: params, errorCallBack: errorCallBack);
  }

  //post请求
  static void post(String url, Function callBack,
      {Map<String, String> params, Function errorCallBack}) async {
    _request(url, callBack,
        method: POST, params: params, errorCallBack: errorCallBack);
  }

//  {
//  "statusCode": 1,
//  "data": {
//  "name": "zoe",
//  "email": "zoey@qq.com",
//  "pics": [
//  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534747043&di=2e3d49c934bb603bcf3f2fe8befd94fc&imgtype=jpg&er=1&src=http%3A%2F%2Fimg0.pconline.com.cn%2Fpconline%2F1309%2F30%2F3571757_9.jpg",
//  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534152325030&di=d1d8493bfe1d5f7a9715b6db8ef3d29d&imgtype=0&src=http%3A%2F%2Fc1.cdn.goumin.com%2Fcms%2Fdetail%2Fday_171101%2F20171101_140dd79.png",
//  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534152325029&di=684aa3a8225a7828ba6b04c8ea4bccd3&imgtype=0&src=http%3A%2F%2Fimgq.duitang.com%2Fuploads%2Fblog%2F201505%2F15%2F20150515014759_Qz5Tw.thumb.700_0.jpeg"
//  ]
//  }
//  }

  //具体的还是要看返回数据的基本结构

  //公共代码部分
  static void _request(String url, Function callBack,
      {String method,
      Map<String, String> params,
      Function errorCallBack}) async {
    print("<net> url :<" + method + ">" + url);

    if (params != null && params.isNotEmpty) {
      print("<net> params :" + params.toString());
    }

    String errorMsg = "";
    int statusCode;

    try {
      Response response;
      if (method == GET) {
        //组合GET请求的参数
        if (params != null && params.isNotEmpty) {
          StringBuffer sb = new StringBuffer("?");
          params.forEach((key, value) {
            sb.write("$key" + "=" + "$value" + "&");
          });
          String paramStr = sb.toString();
          paramStr = paramStr.substring(0, paramStr.length - 1);
          url += paramStr;
        }
        response = await Dio().get(url);
      } else {
        if (params != null && params.isNotEmpty) {
          response = await Dio().post(url, data: params);
        } else {
          response = await Dio().post(url);
        }
      }

      statusCode = response.statusCode;

      //处理错误部分
      if (statusCode < 0) {
        errorMsg = "网络请求错误,状态码:" + statusCode.toString();
        _handError(errorCallBack, errorMsg);
        return;
      }

      if (callBack != null) {
        callBack(response.data["data"]);
        print("<net> response data:" + response.data["data"]);
      }
    } catch (exception) {
      _handError(errorCallBack, exception.toString());
    }
  }

  //处理异常
  static void _handError(Function errorCallback, String errorMsg) {
    if (errorCallback != null) {
      errorCallback(errorMsg);
    }
    print("<net> errorMsg :" + errorMsg);
  }
}
