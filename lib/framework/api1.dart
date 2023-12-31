import 'dart:convert';
import 'dart:developer';
import 'package:flowcy_customer/features/api_log/api_logger.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:http_parser/http_parser.dart';
import 'api2.dart';

class Api1 {
  String baseUrl = 'https://antaranter-dev.intakekurir.com/';
  // String baseUrl = 'https://api-prod.intakekurir.com/';
  // String baseUrl = 'https://api-staging.intakekurir.com/';
   String webUrl = 'https://antaranter.com/';
   String imgStorUrl = 'https://antaranter.sgp1.digitaloceanspaces.com/';
   String playstoreUrl =
      'https://play.google.com/store/apps/details?id=com.antaranter.driver_app';

  Future<dynamic> apiJSONGet(
    String url,
  ) async {
    Map<String, String> headers = {
      'content-Type': 'application/json',
    };
    log('headers = $headers');
    log('url = $baseUrl$url');

    http.Response r =
        await http.get(Uri.parse(baseUrl + url), headers: headers);
    log("status codenya ${r.statusCode}");
    var data = json.decode(r.body);
    // log(data);
    logApi(url: url, res: r, method: "GET");
    return data;
  }

  Future<dynamic> apiJSONGetWitToken(
    String url,
  ) async {
    var token = await Api2().getToken();
    Map<String, String> headers = {
      'content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    log('headers = $headers');
    log('url = $baseUrl$url');

    http.Response r =
        await http.get(Uri.parse(baseUrl + url), headers: headers);
    log("status codenya ${r.statusCode}");
    // log(r.body);
    var data = json.decode(r.body);
    // log(data);
    logApi(url: url, res: r, method: "GET");
    return data;
  }

  Future<dynamic> apiJSONPost(String url, Map<String, dynamic> params) async {
    Map<String, String> headers = {
      'content-Type': 'application/json',
    };
    log('headers = $headers');
    log('url = $baseUrl$url');

    var r = await http.post(Uri.parse(baseUrl + url),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(params),
        encoding: Encoding.getByName("utf-8"));
    var data = jsonDecode(r.body);
    log("status codenya ${r.statusCode}");

    // log(data.toString());
    logApi(url: url, res: r, method: "POST", payload: params);
    return data;
  }

  Future<dynamic> apiJSONPostWithToken(
      String url, Map<String, dynamic> params) async {
    var token = await Api2().getToken();

    Map<String, String> headers = {
      'content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    log('headers = $headers');
    log('url = $baseUrl$url');

    var r = await http.post(Uri.parse(baseUrl + url),
        headers: headers,
        body: jsonEncode(params),
        encoding: Encoding.getByName("utf-8"));
    log(r.body);
    log("status codenya ${r.statusCode}");
    var data = jsonDecode(r.body);

    // log(data.toString());
    logApi(url: url, res: r, method: "POST", payload: params);
    return data;
  }

  Future<dynamic> apiJSONMultipartWithToken(String image, String url) async {
    var token = await Api2().getToken();
    Map<String, String> headers = {
      'content-Type': 'multipart/form-data',
      'Authorization': 'Bearer $token',
    };
    // log('headers = ' + headers.toString());
    // log('url = $baseUrl' + url);
    // log('cek gambar : ' + image.toString());

    var r = http.MultipartRequest('POST', Uri.parse(baseUrl + url));
    r.headers.addAll(headers);
    r.files.add(await http.MultipartFile.fromPath(
        'image', (image == null) ? '' : image,
        contentType: MediaType('image', 'png')));

    var res = await r.send();
    var response = await http.Response.fromStream(res);
    var responseCode = jsonDecode(response.body);

    // log('status code : ' + response.statusCode.toString());
    // log(responseCode.toString());
    logApi(url: url, res: response, method: "POST", payload: {'image': image});
    return responseCode;
  }

  Future<dynamic> apiUploadImageWithToken(String image, String url) async {
    var token = await Api2().getToken();
    Map<String, String> headers = {
      'content-Type': 'multipart/form-data',
      'Authorization': 'Bearer $token',
    };
    var extension = path.extension(image);
    var type = extension.replaceAll('.', '');
    var r = http.MultipartRequest('POST', Uri.parse(baseUrl + url));
    r.headers.addAll(headers);

    r.files.add(await http.MultipartFile.fromPath('image', image,
        contentType: MediaType('image', type)));

    var res = await r.send();
    var response = await http.Response.fromStream(res);
    var responseCode = jsonDecode(response.body);
    logApi(url: url, res: response, method: "POST", payload: {'image': image});
    return responseCode;
  }

  void logApi({
    required dynamic res,
    required String method,
    required String url,
    Map<String, dynamic>? payload,
  }) {
    var data = json.decode(res.body);
    if (res.statusCode == 200) {
      if (data['success'] == true) {
        ApiLogger().log(
          data: ModelApiLog(
            url: url,
            payload: payload?.toString() ?? 'empty',
            response: res.body.toString(),
            method: method,
          ),
        );
      } else {
        ApiLogger().log(
          data: ModelApiLog(
            url: url,
            payload: payload?.toString() ?? 'empty',
            error: res.body.toString(),
            method: method,
          ),
        );
      }
    } else {
      ApiLogger().log(
        data: ModelApiLog(
          url: url,
          payload: payload?.toString() ?? 'empty',
          error: res.body.toString(),
          method: method,
        ),
      );
    }
  }
}
