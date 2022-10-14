import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:mvvm_architecture_with_provider/data/network/base_api_services.dart';
import '../app_excaptions.dart';

class NetworkApiService extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responceJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responceJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connoction');
    }
    return responceJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responceJson;
    try {
      Response response = await http
          .post(Uri.parse(url), body: data)
          .timeout(Duration(seconds: 10));
      responceJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connoction');
    }
    return responceJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responceJson = jsonDecode(response.body);
        return responceJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 404:
        throw UnauthorizedException(response.body.toString());
      default:
        throw FetchDataException(
            'Error occurred while communication with server' +
                'with status code' +
                response.statusCode.toString());
    }
  }
}
