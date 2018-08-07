import 'package:dio/dio.dart';
import 'package:the_first_one/model/Api.dart';

class NetUtil {
  //get请求
  static void get(String url, Function callBack,
      {Map<String, String> params, Function errorCallBack}) async {
    if (!url.startsWith("http")) {
      url = Api.BaseUrl + url;
    }

    if (params != null && params.isNotEmpty) {
      StringBuffer sb = new StringBuffer("?");
      params.forEach((key, value) {
        sb.write("$key" + "=" + "$value" + "&");
      });
      String paramStr = sb.toString();
      paramStr = paramStr.substring(0, paramStr.length - 1);
      url += paramStr;
    }

    callBack(await Dio().get(url));
  }

  //post请求
  static void post(String url, Function callBack,
      {Map<String, String> params, Function errorCallBack}) async {
    callBack(await Dio().post(url));
  }
}
