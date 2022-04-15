// ignore_for_file: file_names

import 'package:dio/dio.dart';

class DioHelper {
  final Dio _dio = Dio();

  Future<Response<Map<String, dynamic>>?> getNumberInfo(String url) async {
    Response<Map<String, dynamic>>? _r;
    try {
      _r = await _dio.get(url);
    } on DioError catch (error) {
      print(error.message);
    }
    return _r;
  }
}
