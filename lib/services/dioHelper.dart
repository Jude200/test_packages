// ignore_for_file: file_names

import 'package:dio/dio.dart';

class DioHelper {
  final Dio _dio = Dio();

  Future<Map?> getNumberInfo(String url) async {
    Response<Map>? _r;
    try {
      _r = await _dio.get(url);
    } on DioError catch (error) {
      print(error.message);
    }
    return _r!.data;
  }
}
